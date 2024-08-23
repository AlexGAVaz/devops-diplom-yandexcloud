locals {
  private_subnets_list = [
    for cidr, subnet in data.terraform_remote_state.vpc.outputs.private_subnets : {
      cidr      = cidr
      zone      = subnet.zone
      subnet_id = subnet.subnet_id
    }
  ]
  private_subnets_map = { for subnet in local.private_subnets_list : subnet.cidr => subnet }

  public_subnets_list = [
    for cidr, subnet in data.terraform_remote_state.vpc.outputs.public_subnets : {
      cidr      = cidr
      zone      = subnet.zone
      subnet_id = subnet.subnet_id
    }
  ]
  public_subnets_map = { for subnet in local.public_subnets_list : subnet.cidr => subnet }
}

locals {
  private_subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnet_ids
  private_zones      = data.terraform_remote_state.vpc.outputs.private_zones
}

locals {
  public_subnet_ids = data.terraform_remote_state.vpc.outputs.public_subnet_ids
  public_zones      = data.terraform_remote_state.vpc.outputs.public_zones
}

