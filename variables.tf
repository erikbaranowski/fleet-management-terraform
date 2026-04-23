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
  description = "Prometheus-style matchers that select which collectors receive this pipeline configuration."
  default = [
    "collector.os=~'.*'",
  ]
}

variable "example_pipeline_enabled" {
  type        = bool
  description = "Whether the example pipeline is enabled for matched collectors."
  default     = true
}
