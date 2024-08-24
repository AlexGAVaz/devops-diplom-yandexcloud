# common variable ------------------------------------------------------------------------------------------------------
variable "token" {
  type = string
}
variable "cloud_id" {
  type = string
}
variable "folder_id" {
  type = string
}
variable "labels" {
  type = map(string)
}
variable "create_vpc" {
  type = bool
}
variable "create_sg" {
  type = bool
}
variable "network_name" {
  type = string
}
variable "network_description" {
  type = string
}
variable "public_subnets" {
  type = list(object({
    v4_cidr_blocks = list(string)
    zone           = string
    description    = optional(string)
    name           = optional(string)
    folder_id      = optional(string)
  }))
}
variable "private_subnets" {
  type = list(object({
    v4_cidr_blocks = list(string)
    zone           = string
    description    = optional(string)
    name           = optional(string)
    folder_id      = optional(string)
  }))
}
variable "create_nat_gw" {
  type = bool
}
variable "routes_public_subnets" {
  type = list(object({
    destination_prefix = string
    next_hop_address   = string
  }))
  default = []
}
variable "routes_private_subnets" {
  type = list(object({
    destination_prefix = string
    next_hop_address   = string
  }))
  default = []
}
