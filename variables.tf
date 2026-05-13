variable "fleet_management_url" {
  type        = string
  description = "Grafana Cloud Fleet Management API URL (Connections → Collector → Fleet Management → API)."
}

variable "fleet_management_auth" {
  type        = string
  sensitive   = true
  description = "Fleet Management basic auth: <instance_id>:<access_policy_token>. Token needs fleet-management:read and fleet-management:write scopes."
}

variable "example_pipeline_matchers" {
  type        = list(string)
  description = "Prometheus-style matchers (double-quoted values, e.g. collector.os=~\".*\") that select which collectors receive this pipeline configuration."
  default = [
    "alloy_terraform_example=\"true\"",
  ]
}

variable "example_pipeline_enabled" {
  type        = bool
  description = "Whether the example Alloy pipeline is enabled for matched collectors."
  default     = true
}

variable "example_otel_pipeline_matchers" {
  type        = list(string)
  description = "Matchers for the example OTel pipeline. Default expects collectors with label otel_example=\"true\"; adjust so these matchers do not overlap other pipelines in production."
  default = [
    "otel_terraform_example=\"true\"",
  ]
}

variable "example_otel_pipeline_enabled" {
  type        = bool
  description = "Whether the example OTel pipeline is enabled for matched collectors."
  default     = true
}
