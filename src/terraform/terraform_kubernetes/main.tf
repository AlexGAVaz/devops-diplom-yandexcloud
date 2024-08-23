data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "my-state"
    region                      = "ru-central1"
    key                         = "diplom/terraform_vpc.tfstate"
    shared_credentials_file     = "./storage.key"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

data "terraform_remote_state" "sg" {
  backend = "s3"
  config = {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "my-state"
    region                      = "ru-central1"
    key                         = "diplom/terraform_security_group.tfstate"
    shared_credentials_file     = "./storage.key"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

module "kubernetes_cluster" {
  source                      = "git::https://github.com/terraform-yc-modules/terraform-yc-kubernetes.git"
  allow_public_load_balancers = var.allow_public_load_balancers
  allowed_ips                 = var.allowed_ips
  allowed_ips_ssh             = var.allowed_ips_ssh
  cluster_ipv4_range          = var.cluster_ipv4_range
  cluster_ipv6_range          = var.cluster_ipv6_range
  cluster_name                = var.cluster_name
  cluster_version             = var.cluster_version
  container_runtime_type      = var.container_runtime_type
  create_kms                  = var.create_kms
  custom_egress_rules         = var.custom_egress_rules
  custom_ingress_rules        = var.custom_ingress_rules
  custom_metadata             = var.custom_metadata
  description                 = var.description
  enable_cilium_policy        = var.enable_cilium_policy
  enable_default_rules        = var.enable_default_rules
  enable_node_ports_rules     = var.enable_node_ports_rules
  enable_node_ssh_access      = var.enable_node_ssh_access
  enable_oslogin_or_ssh_keys  = var.enable_oslogin_or_ssh_keys
  enable_outgoing_traffic     = var.enable_outgoing_traffic
  folder_id                   = var.folder_id
  kms_key                     = var.kms_key
  master_auto_upgrade         = var.master_auto_upgrade
  master_labels               = var.master_labels
  network_id                  = data.terraform_remote_state.vpc.outputs.vpc_id
  security_groups_ids_list    = [data.terraform_remote_state.sg.outputs.security_group_id]
  master_logging              = var.master_logging
  master_maintenance_windows  = var.master_maintenance_windows
  master_service_account_id   = var.master_service_account_id
  network_acceleration_type   = var.network_acceleration_type
  network_policy_provider     = var.network_policy_provider
  node_account_name           = var.node_account_name
  master_locations = [
    for subnet in local.public_subnets_list :
    {
      zone      = subnet.zone
      subnet_id = subnet.subnet_id
    }
  ]
  node_ipv4_cidr_mask_size = var.node_ipv4_cidr_mask_size
  node_service_account_id  = var.node_service_account_id
  public_access            = var.public_access
  release_channel          = var.release_channel
  service_account_name     = var.service_account_name
  timeouts                 = var.timeouts
  use_existing_sa          = var.use_existing_sa
  node_groups = {
        "fixed-scale-node-group" = {
          description = "Kubernetes nodes group with fixed size scaling"
          labels      = var.labels
          node_labels = {
            role        = "worker-group"
            environment = "diplom"
          }
          fixed_scale = {
            size = 3
          }
          node_locations = [
            for subnet in local.private_subnets_list :
            {
              zone      = subnet.zone
              subnet_id = subnet.subnet_id
            }
          ]
        }
  }
  node_groups_defaults = var.node_groups_defaults
}
