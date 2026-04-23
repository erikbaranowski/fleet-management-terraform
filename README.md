# fleet-management-terraform

Example [Grafana Fleet Management](https://grafana.com/docs/grafana-cloud/send-data/fleet-management/) pipeline managed with the [Grafana Terraform provider](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/fleet_management_pipeline).

## Prerequisites

- Terraform `>= 1.5`
- Grafana Terraform provider `~> 3.19` (Fleet Management support)
- A Grafana Cloud access policy token with `fleet-management:read` and `fleet-management:write` scopes
- Fleet Management API URL and instance ID from **Connections → Collector → Fleet Management → API**

`fleet_management_auth` must be `INSTANCE_ID:TOKEN` (basic auth username:password as described in the [provider docs](https://registry.terraform.io/providers/grafana/grafana/latest/docs)).

## Local use

```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your URL and auth, then:
terraform init
terraform plan
terraform apply
```

## GitHub Actions

Workflow [.github/workflows/terraform-sync.yml](.github/workflows/terraform-sync.yml) runs `fmt`, `init`, `validate`, and `plan` on every push and pull request. It runs `apply` on pushes to `main` and on `workflow_dispatch`.

Add these repository **Secrets**:

| Secret | Value |
|--------|--------|
| `GRAFANA_FLEET_MANAGEMENT_URL` | Fleet Management API base URL |
| `GRAFANA_FLEET_MANAGEMENT_AUTH` | `INSTANCE_ID:ACCESS_POLICY_TOKEN` |

Optional: configure a [remote state backend](https://developer.hashicorp.com/terraform/language/settings/backends/configuration) before relying on CI applies.
