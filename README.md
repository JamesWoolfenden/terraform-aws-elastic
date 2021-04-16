# terraform-aws-elastic

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-elastic/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-elastic)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-elastic.svg)](https://github.com/JamesWoolfenden/terraform-aws-elastic/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-elastic.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-elastic/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-elastic/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-elastic&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-elastic/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-elastic&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module - to provision an Elasticsearch cluster.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing Terraform code:

```hcl
module "elastic" {
  source      = "JamesWoolfenden/elastic/aws"
  version     = "0.0.2"
  subnets     = var.subnets
  vpc         = <your vpc>
  kms_key_id  = aws_kms_key.elastic.id
  log_name    = var.log_name
  common_tags = var.common_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_elasticsearch_domain.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain) | resource |
| [aws_elasticsearch_domain_policy.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain_policy) | resource |
| [aws_iam_service_linked_role.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_linked_role) | resource |
| [aws_security_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_advanced_security_options"></a> [advanced\_security\_options](#input\_advanced\_security\_options) | n/a | `bool` | `false` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | n/a | `map(any)` | n/a | yes |
| <a name="input_cw_kms_key_id"></a> [cw\_kms\_key\_id](#input\_cw\_kms\_key\_id) | n/a | `any` | n/a | yes |
| <a name="input_dedicated_master_count"></a> [dedicated\_master\_count](#input\_dedicated\_master\_count) | n/a | `number` | `1` | no |
| <a name="input_dedicated_master_enabled"></a> [dedicated\_master\_enabled](#input\_dedicated\_master\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_dedicated_master_type"></a> [dedicated\_master\_type](#input\_dedicated\_master\_type) | n/a | `string` | `"t2.medium.elasticsearch"` | no |
| <a name="input_ebs_volume_size"></a> [ebs\_volume\_size](#input\_ebs\_volume\_size) | Optionally use EBS volumes for data storage by specifying volume size in GB (default 0) | `number` | `0` | no |
| <a name="input_ebs_volume_type"></a> [ebs\_volume\_type](#input\_ebs\_volume\_type) | Storage type of EBS volumes, if used (default gp2) | `string` | `"gp3"` | no |
| <a name="input_es_domain"></a> [es\_domain](#input\_es\_domain) | ElasticSearch domain name | `string` | `"elastic"` | no |
| <a name="input_es_version"></a> [es\_version](#input\_es\_version) | n/a | `string` | `7.1` | no |
| <a name="input_es_zone_awareness"></a> [es\_zone\_awareness](#input\_es\_zone\_awareness) | n/a | `bool` | `true` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `1` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | `""` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | n/a | `string` | `"aws/es"` | no |
| <a name="input_log_name"></a> [log\_name](#input\_log\_name) | n/a | `string` | `"elasticsearch"` | no |
| <a name="input_log_publishing_options_type"></a> [log\_publishing\_options\_type](#input\_log\_publishing\_options\_type) | n/a | `string` | `"AUDIT_LOGS"` | no |
| <a name="input_retention"></a> [retention](#input\_retention) | n/a | `number` | `90` | no |
| <a name="input_snapshot_start_hour"></a> [snapshot\_start\_hour](#input\_snapshot\_start\_hour) | n/a | `string` | `"23"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | List of VPC Subnet IDs to create ElasticSearch Endpoints in | `list(string)` | n/a | yes |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | VPC ID where to launch ElasticSearch cluster | `any` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR to allow connections to ElasticSearch | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elasticsearch"></a> [elasticsearch](#output\_elasticsearch) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-elastic/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-elastic/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-elastic&url=https://github.com/JamesWoolfenden/terraform-aws-elastic
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-elastic&url=https://github.com/JamesWoolfenden/terraform-aws-elastic
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-elastic
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-elastic
[share_email]: mailto:?subject=terraform-aws-elastic&body=https://github.com/JamesWoolfenden/terraform-aws-elastic
