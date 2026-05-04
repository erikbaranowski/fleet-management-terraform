resource "grafana_fleet_management_pipeline" "example" {
  name        = "terraform_example"
  config_type = "ALLOY"
  contents    = file("${path.module}/pipelines/example.alloy")
  enabled     = var.example_pipeline_enabled
  matchers    = var.example_pipeline_matchers
}

resource "grafana_fleet_management_pipeline" "example_otel" {
  name        = "terraform_example_otel"
  config_type = "OTEL"
  contents    = file("${path.module}/pipelines/example.otel.yaml")
  enabled     = var.example_otel_pipeline_enabled
  matchers    = var.example_otel_pipeline_matchers
}
