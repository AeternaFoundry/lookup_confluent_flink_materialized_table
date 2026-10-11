output "flink_materialized_table_lookup_id" {
  description = "Map of id values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "flink_materialized_table_lookup_columns" {
  description = "Map of columns values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no columns are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.columns if v.columns != null && length(v.columns) > 0 }
}
output "flink_materialized_table_lookup_compute_pool" {
  description = "Map of compute_pool values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no compute_pool are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => one(v.compute_pool) if v.compute_pool != null && length(v.compute_pool) > 0 }
}
output "flink_materialized_table_lookup_constraints" {
  description = "Map of constraints values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no constraints are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.constraints if v.constraints != null && length(v.constraints) > 0 }
}
output "flink_materialized_table_lookup_credentials" {
  description = "Map of credentials values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no credentials are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "flink_materialized_table_lookup_display_name" {
  description = "Map of display_name values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "flink_materialized_table_lookup_distribution" {
  description = "Map of distribution values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no distribution are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.distribution if v.distribution != null && length(v.distribution) > 0 }
}
output "flink_materialized_table_lookup_environment" {
  description = "Map of environment values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no environment are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "flink_materialized_table_lookup_kafka_cluster" {
  description = "Map of kafka_cluster values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no kafka_cluster are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.kafka_cluster if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "flink_materialized_table_lookup_organization" {
  description = "Map of organization values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no organization are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => one(v.organization) if v.organization != null && length(v.organization) > 0 }
}
output "flink_materialized_table_lookup_principal" {
  description = "Map of principal values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no principal are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => one(v.principal) if v.principal != null && length(v.principal) > 0 }
}
output "flink_materialized_table_lookup_query" {
  description = "Map of query values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no query are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.query if v.query != null && length(v.query) > 0 }
}
output "flink_materialized_table_lookup_rest_endpoint" {
  description = "Map of rest_endpoint values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no rest_endpoint are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "flink_materialized_table_lookup_session_options" {
  description = "Map of session_options values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no session_options are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.session_options if v.session_options != null && length(v.session_options) > 0 }
}
output "flink_materialized_table_lookup_stopped" {
  description = "Map of stopped values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no stopped are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.stopped if v.stopped != null }
}
output "flink_materialized_table_lookup_table_options" {
  description = "Map of table_options values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no table_options are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.table_options if v.table_options != null && length(v.table_options) > 0 }
}
output "flink_materialized_table_lookup_watermark" {
  description = "Map of watermark values across all flink_materialized_table_lookup, keyed the same as var.flink_materialized_table_lookup except keys with no watermark are omitted"
  value       = { for k, v in data.confluent_flink_materialized_table.flink_materialized_table_lookup : k => v.watermark if v.watermark != null && length(v.watermark) > 0 }
}

