output "control_plane_nsg_rules" {
  value = merge(
    local.control_plane_groups.securityRules,
    local.control_plane_groups.defaultSecurityRules
  )
}

output "worker_node_nsg_rules" {
  value = local.worker_node_groups.defaultSecurityRules
}
