variable "namespaces_lookup" {
  description = <<EOT
Map of namespaces_lookup, attributes below
Optional:
    - namespace
    - recursive
EOT

  type = map(object({
    namespace = optional(string)
    recursive = optional(bool)
  }))
}

