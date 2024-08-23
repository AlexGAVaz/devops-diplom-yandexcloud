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

module "demo_security_group" {
  source                    = "git::https://github.com/terraform-yc-modules/terraform-yc-security-group.git"
  name                      = var.sg_name
  network_id                = data.terraform_remote_state.vpc.outputs.vpc_id
  folder_id                 = var.folder_id
  labels                    = var.labels
  ingress_rules_with_cidrs  = var.ingress_rules_with_cidrs
  ingress_rules_with_sg_ids = var.ingress_rules_with_sg_ids
  egress_rules              = var.egress_rules
  self                      = var.self
  nlb_hc                    = var.nlb_hc
}
