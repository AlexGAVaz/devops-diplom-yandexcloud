output "cluster_ca_certificate" {
  value = module.kubernetes_cluster.cluster_ca_certificate
}

output "cluster_id" {
  value = module.kubernetes_cluster.cluster_id
}

output "cluster_name" {
  value = module.kubernetes_cluster.cluster_name
}

output "external_cluster_cmd" {
  value = module.kubernetes_cluster.external_cluster_cmd
}

output "external_v4_address" {
  value = module.kubernetes_cluster.external_v4_address
}

output "external_v4_endpoint" {
  value = module.kubernetes_cluster.external_v4_endpoint
}

output "internal_cluster_cmd" {
  value = module.kubernetes_cluster.internal_cluster_cmd
}

output "internal_v4_address" {
  value = module.kubernetes_cluster.internal_v4_address
}

output "internal_v4_endpoint" {
  value = module.kubernetes_cluster.internal_v4_endpoint
}

output "node_account_id" {
  value = module.kubernetes_cluster.node_account_id
}

output "node_account_name" {
  value = module.kubernetes_cluster.node_account_name
}

output "service_account_id" {
  value = module.kubernetes_cluster.service_account_id
}

output "service_account_name" {
  value = module.kubernetes_cluster.service_account_name
}
