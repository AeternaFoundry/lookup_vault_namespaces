data "vault_namespaces" "namespaces_lookup" {
  for_each = var.namespaces_lookup

  namespace = each.value.namespace
  recursive = each.value.recursive
}

