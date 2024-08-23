output "vpc_id" {
  description = "ID of the created VPC network"
  value       = module.demo_ark_vpc.vpc_id
}
output "public_v4_cidr_blocks" {
  description = "List of `v4_cidr_blocks` used in the VPC network"
  value       = module.demo_ark_vpc.public_v4_cidr_blocks
}
output "public_subnets" {
  description = "Details of the created public subnets"
  value       = module.demo_ark_vpc.public_subnets
}
output "private_v4_cidr_blocks" {
  description = "List of `v4_cidr_blocks` used in the VPC network"
  value       = module.demo_ark_vpc.private_v4_cidr_blocks
}
output "private_subnets" {
  description = "Details of the created private subnets"
  value       = module.demo_ark_vpc.private_subnets
}
output "private_subnet_ids" {
  description = "IDs of the created private subnets"
  value       = [for subnet in values(module.demo_ark_vpc.private_subnets) : subnet.subnet_id]
}
output "private_zones" {
  description = "Zone of the created private subnets"
  value       = [for subnet in values(module.demo_ark_vpc.private_subnets) : subnet.zone]
}
output "public_subnet_ids" {
  description = "IDs of the created public subnets"
  value       = [for subnet in values(module.demo_ark_vpc.public_subnets) : subnet.subnet_id]
}
output "public_zones" {
  description = "Zone of the created public subnets"
  value       = [for subnet in values(module.demo_ark_vpc.public_subnets) : subnet.zone]
}



