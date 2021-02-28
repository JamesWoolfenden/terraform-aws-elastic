# terraform-aws-elastic

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-elastic/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-elastic)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-elastic.svg)](https://github.com/JamesWoolfenden/terraform-aws-elastic/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-elastic.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-elastic/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-elastic/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-elastic&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-elastic/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-elastic&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing Terraform code:

```hcl
module "elastic" {
  source      = "JamesWoolfenden/elastic/aws"
  version     = "0.0.2"
  common_tags = var.common_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) |
| [aws_cloudwatch_log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) |
| [aws_elasticsearch_domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain) |
| [aws_elasticsearch_domain_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain_policy) |
| [aws_iam_service_linked_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_linked_role) |
| [aws_region](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| advanced\_security\_options | n/a | `bool` | `false` | no |
| common\_tags | n/a | `map(any)` | n/a | yes |
| dedicated\_master\_count | n/a | `number` | `1` | no |
| dedicated\_master\_enabled | n/a | `bool` | `true` | no |
| dedicated\_master\_type | n/a | `string` | `""` | no |
| ebs\_volume\_size | Optionally use EBS volumes for data storage by specifying volume size in GB (default 0) | `number` | `0` | no |
| ebs\_volume\_type | Storage type of EBS volumes, if used (default gp2) | `string` | `"gp2"` | no |
| es\_domain | ElasticSearch domain name | `string` | `"elastic"` | no |
| es\_version | n/a | `string` | `7.1` | no |
| es\_zone\_awareness | n/a | `bool` | `true` | no |
| instance\_count | n/a | `number` | `1` | no |
| instance\_type | n/a | `string` | `""` | no |
| kms\_key\_id | n/a | `string` | `"aws/es"` | no |
| log\_name | n/a | `string` | `"elasticsearch"` | no |
| retention | n/a | `number` | `90` | no |
| snapshot\_start\_hour | n/a | `string` | `"23"` | no |
| subnets | List of VPC Subnet IDs to create ElasticSearch Endpoints in | `list(string)` | n/a | yes |
| vpc | VPC ID where to launch ElasticSearch cluster | `any` | n/a | yes |
| vpc\_cidr | CIDR to allow connections to ElasticSearch | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| elasticsearch | n/a |
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
