data "confluent_flink_materialized_table" "flink_materialized_table_lookup" {
  for_each = var.flink_materialized_table_lookup

  display_name  = each.value.display_name
  rest_endpoint = each.value.rest_endpoint

  dynamic "compute_pool" {
    for_each = each.value.compute_pool != null ? [each.value.compute_pool] : []
    content {
      id = compute_pool.value.id
    }
  }

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "environment" {
    for_each = each.value.environment != null ? [each.value.environment] : []
    content {
      id = environment.value.id
    }
  }

  dynamic "organization" {
    for_each = each.value.organization != null ? [each.value.organization] : []
    content {
      id = organization.value.id
    }
  }

  dynamic "principal" {
    for_each = each.value.principal != null ? [each.value.principal] : []
    content {
      id = principal.value.id
    }
  }
}

