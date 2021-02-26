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

The example in the **examplea** folder shows how to pass your own policy in when creating your key.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| container | n/a | `string` | `"{
  \"command\":[\"echo\",\"'hello world'\"],
  \"environment\": [],
  \"image\": \"busybox\",
  \"memory\": 2000,
  \"mountPoints\": [] ,
  \"resourceRequirements\" : [],
  \"ulimits\": [] ,
  \"vcpus\": 2 ,
  \"volumes\": []
}
"` | no |
| instance\_role | n/a | `string` | `"arn:aws:iam::680235478471:instance-profile/ecsInstanceRole"` | no |
| job\_name | n/a | `string` | `"first-run-job-definition"` | no |
| job\_type | n/a | `string` | `"container"` | no |
| queue | n/a | `map(any)` | <pre>{<br>  "name": "first-run-job-queue-2",<br>  "priority": 1,<br>  "state": "ENABLED"<br>}</pre> | no |
| security\_group\_ids | n/a | `list(any)` | <pre>[<br>  "sg-05749b21616ab0cdc"<br>]</pre> | no |
| service\_role | n/a | `string` | `"arn:aws:iam::680235478471:role/service-role/AWSBatchServiceRole"` | no |
| subnets | n/a | `list(any)` | <pre>[<br>  "subnet-05808ec64faaa18ba"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| definition | n/a |
| environment | n/a |
| queue | n/a |

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
