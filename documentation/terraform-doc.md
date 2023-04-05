## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1.0 |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0.0 ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.terraformdemo](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_IN"></a> [IN](#input\_IN) | Intancey type value | `string` | `"t2.small"` | no |
| <a name="input_aws_ami"></a> [aws\_ami](#input\_aws\_ami) | AWS AMI Values | `string` | `"ami-04ad2567c9e3d7893"` | no |
| <a name="input_az"></a> [az](#input\_az) | availability\_zones value | `string` | `"us-east-1a"` | no |
| <a name="input_sub-net"></a> [sub-net](#input\_sub-net) | Subnet values | `string` | `"subnet-008b0a0d1c302b578"` | no |

## Outputs

No outputs.
