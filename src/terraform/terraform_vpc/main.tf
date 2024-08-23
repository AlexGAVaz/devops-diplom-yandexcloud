
module "demo_ark_vpc" {
  source                 = "git::https://github.com/terraform-yc-modules/terraform-yc-vpc.git"
  create_vpc             = var.create_vpc
  create_sg              = var.create_sg
  network_name           = var.network_name
  network_description    = var.network_description
  folder_id              = var.folder_id
  labels                 = var.labels
  public_subnets         = local.named_public_subnets
  private_subnets        = local.named_private_subnets
  create_nat_gw          = var.create_nat_gw
  routes_public_subnets  = distinct(var.routes_public_subnets)
  routes_private_subnets = distinct(var.routes_private_subnets)
}