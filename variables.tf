variable "flink_materialized_table_lookup" {
  description = <<EOT
Map of flink_materialized_table_lookup, attributes below
Required:
    - display_name
Optional:
    - rest_endpoint
    - compute_pool (block):
        - id (required)
    - credentials (block):
        - key (required)
        - secret (required)
    - environment (block):
        - id (required)
    - organization (block):
        - id (required)
    - principal (block):
        - id (required)
EOT

  type = map(object({
    display_name  = string
    rest_endpoint = optional(string)
    compute_pool = optional(object({
      id = string
    }))
    credentials = optional(object({
      key    = string
      secret = string
    }))
    environment = optional(object({
      id = string
    }))
    organization = optional(object({
      id = string
    }))
    principal = optional(object({
      id = string
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

