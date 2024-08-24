cloud_id                   = "b1gcla1jpo0ir7kgd3d8"
folder_id                  = "b1gtn0rdlt5hmqmngokb"
cluster_name                = "diplom-k8s-cluster"
description                 = "Diplom custom Kubernetes cluster in Yandex Cloud"
service_account_name        = "k8s-service-account"
node_account_name           = "k8s-node-account"
allow_public_load_balancers = true
allowed_ips                 = ["0.0.0.0/0"]
allowed_ips_ssh             = ["0.0.0.0/0"]
cluster_ipv4_range          = "172.17.0.0/16"
cluster_ipv6_range          = null
service_ipv4_range          = "172.18.0.0/16"
service_ipv6_range          = null
cluster_version             = "1.28"
container_runtime_type      = "containerd"
create_kms                  = true
master_service_account_id   = null
network_acceleration_type   = "standard"
network_policy_provider     = "CALICO"
enable_cilium_policy        = false
enable_default_rules        = false
enable_node_ports_rules     = true
enable_node_ssh_access      = true
enable_outgoing_traffic     = true
kms_key                     = {}
master_auto_upgrade         = true
use_existing_sa             = false
node_service_account_id     = null
node_ipv4_cidr_mask_size    = 24
public_access               = true
release_channel             = "STABLE"
custom_metadata = {
  created_by  = "terraform"
  environment = "diplom"
}
enable_oslogin_or_ssh_keys = {
  enable-oslogin = false
  ssh-keys       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXGnbGAymuX6T9rdz8ZJlw10aZ5UaQUPvT1ihk7pbIxuJq3/SnHWoLD+08xgsYmOetg9lJsnlpYf2kDXAEae1UcgqXPOHhAN3ug4g5glXIxul3IVWziAtI+/fEW/vVGpetJiazdplZti6UPAmpvg4IU/vkKmmyI2ZB5CqkUr2c5KiBKn0RRiEuA51CivDEClU+yRotcO7VvaXq99OGyfuHJfk3oQvFjKNMSMM5AhSTF52oLR4aSDcnFowk0rtWPuH3Mlb/JH0d7lb3jbix3Mee9+JOpgCqVe+KHL+Fosc3ps4F7GfPlf2iD027Pj24n/JRsmmbl5+Ep1jX9vDC/9/J macbook"
} 
master_labels = {
  created_by  = "terraform"
  environment = "diplom"
} 
labels = {
  created_by  = "terraform"
  environment = "diplom"
}
master_logging = {
  enabled                = false
  enabled_kube_apiserver = false
  enabled_autoscaler     = false
  enabled_events         = false
  enabled_audit          = false
  log_group_id           = null
}
timeouts = {
  create = "60m"
  delete = "60m"
  update = "60m"
}
master_maintenance_windows = [
  {
    day        = "monday"
    start_time = "23:00"
    duration   = "3h"
  }
]
node_groups_defaults = {
  core_fraction = 50
  disk_size     = 32
  disk_type     = "network-ssd"
  ipv4          = true
  ipv6          = false
  nat           = false
  node_cores    = 4
  node_gpus     = 0
  node_memory   = 4
  platform_id   = "standard-v2"
  preemptible   = true
}