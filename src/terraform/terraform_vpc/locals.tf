locals {
  named_public_subnets = [
    for subnet in var.public_subnets : merge(subnet, {
      name = subnet.name != "" ? subnet.name : "${var.network_name}-public-${index(var.public_subnets, subnet) + 1}"
    })
  ]

  named_private_subnets = [
    for subnet in var.private_subnets : merge(subnet, {
      name = subnet.name != "" ? subnet.name : "${var.network_name}-private-${index(var.private_subnets, subnet) + 1}"
    })
  ]
}