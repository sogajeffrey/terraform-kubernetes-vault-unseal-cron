# terraform-kubernetes-vault-unseal-cron

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Resources

| Name | Type |
|------|------|
| [kubernetes_cron_job.vault_unseal](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cron_job) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_schedule"></a> [schedule](#input\_schedule) | n/a | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | n/a | `string` | n/a | yes |
| <a name="input_vault_shards"></a> [vault\_shards](#input\_vault\_shards) | n/a | `list(any)` | n/a | yes |
