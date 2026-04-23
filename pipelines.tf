resource "grafana_fleet_management_pipeline" "example" {
  name     = "terraform_example"
  contents = file("${path.module}/pipelines/example.alloy")
  enabled  = var.example_pipeline_enabled
  matchers = var.example_pipeline_matchers
}
