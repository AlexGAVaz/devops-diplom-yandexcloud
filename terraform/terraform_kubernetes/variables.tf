variable "token" {
  type = string
}
variable "cloud_id" {
  type = string
}
variable "folder_id" {
  type = string
}
variable "allow_public_load_balancers" {
  type = bool
}
variable "allowed_ips" {
  type = list(string)
}
variable "allowed_ips_ssh" {
  type = list(string)
}
variable "cluster_ipv4_range" {
  type = string
}
variable "cluster_ipv6_range" {
  type = string
}
variable "cluster_name" {
  type = string
}
variable "cluster_version" {
  type = string
}
variable "container_runtime_type" {
  type = string
}
variable "create_kms" {
  type = bool
}
variable "custom_egress_rules" {
  type    = map(any)
  default = {}
}
variable "custom_ingress_rules" {
  type    = map(any)
  default = {}
}
variable "custom_metadata" {
  type    = map(any)
  default = {}
}
variable "description" {
  type = string
}
variable "enable_cilium_policy" {
  type = bool
}
variable "enable_default_rules" {
  type = bool
}
variable "enable_node_ports_rules" {
  type = bool
}
variable "enable_node_ssh_access" {
  type = bool
}
variable "enable_oslogin_or_ssh_keys" {
  type    = map(any)
  default = {}
}
variable "enable_outgoing_traffic" {
  type = bool
}
variable "kms_key" {
  type    = any
  default = {}
}
variable "master_auto_upgrade" {
  type = bool
}
variable "master_labels" {
  type    = map(string)
  default = {}
}
variable "labels" {
  type = map(string)
}
variable "master_locations" {
  type = list(object({
    zone      = string
    subnet_id = string
  }))
  default = []
}
variable "master_logging" {
  type = object({
    enabled                = optional(bool, true)
    folder_id              = optional(string, null)
    enabled_kube_apiserver = optional(bool, true)
    enabled_autoscaler     = optional(bool, true)
    enabled_events         = optional(bool, true)
    enabled_audit          = optional(bool, true)
    log_group_id           = optional(string, null)
  })
  default = {}
}
variable "master_maintenance_windows" {
  type    = list(map(string))
  default = []
}
variable "master_service_account_id" {
  type = string
}
variable "network_acceleration_type" {
  type = string
}
variable "network_policy_provider" {
  type = string
}
variable "node_account_name" {
  type = string
}
variable "node_groups" {
  type = map(object({
    description = string
    auto_scale = optional(object({
      min     = number
      max     = number
      initial = number
    }))
    node_labels = optional(map(string))
    node_locations = optional(list(object({
      zone      = string
      subnet_id = string
    })))
    max_expansion   = optional(number)
    max_unavailable = optional(number)
  }))
  default = {}
}
variable "node_groups_defaults" {
  type    = map(any)
  default = {}
}
variable "node_ipv4_cidr_mask_size" {
  type = number
}
variable "node_service_account_id" {
  type = string
}
variable "public_access" {
  type = bool
}
variable "release_channel" {
  type = string
}
variable "service_account_name" {
  type = string
}
variable "service_ipv4_range" {
  type = string
}

variable "service_ipv6_range" {
  type = string
}

variable "timeouts" {
  type = map(string)
}

variable "use_existing_sa" {
  type = bool
}
