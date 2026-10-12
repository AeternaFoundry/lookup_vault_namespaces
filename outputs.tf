output "namespaces_lookup_id" {
  description = "Map of id values across all namespaces_lookup, keyed the same as var.namespaces_lookup except keys with no id are omitted"
  value       = { for k, v in data.vault_namespaces.namespaces_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "namespaces_lookup_namespace" {
  description = "Map of namespace values across all namespaces_lookup, keyed the same as var.namespaces_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.vault_namespaces.namespaces_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "namespaces_lookup_paths" {
  description = "Map of paths values across all namespaces_lookup, keyed the same as var.namespaces_lookup except keys with no paths are omitted"
  value       = { for k, v in data.vault_namespaces.namespaces_lookup : k => v.paths if v.paths != null && length(v.paths) > 0 }
}
output "namespaces_lookup_paths_fq" {
  description = "Map of paths_fq values across all namespaces_lookup, keyed the same as var.namespaces_lookup except keys with no paths_fq are omitted"
  value       = { for k, v in data.vault_namespaces.namespaces_lookup : k => v.paths_fq if v.paths_fq != null && length(v.paths_fq) > 0 }
}
output "namespaces_lookup_recursive" {
  description = "Map of recursive values across all namespaces_lookup, keyed the same as var.namespaces_lookup except keys with no recursive are omitted"
  value       = { for k, v in data.vault_namespaces.namespaces_lookup : k => v.recursive if v.recursive != null }
}

