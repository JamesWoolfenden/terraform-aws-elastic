module "elastic" {
  source        = "../../"
  common_tags   = var.common_tags
  subnets       = var.subnets
  vpc           = "vpc-510efa34"
  cw_kms_key_id = aws_kms_key.elastic.id
  log_name      = var.log_name
}


resource "aws_kms_key" "elastic" {
  enable_key_rotation = true
  policy              = <<POLICY
{
 "Version": "2012-10-17",
    "Id": "key-default-1",
    "Statement": [
        {
            "Sid": "Enable IAM User Permissions",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
            },
            "Action": "kms:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "logs.${var.region}.amazonaws.com"
            },
            "Action": [
                "kms:Encrypt*",
                "kms:Decrypt*",
                "kms:ReEncrypt*",
                "kms:GenerateDataKey*",
                "kms:Describe*"
            ],
            "Resource": "*",
            "Condition": {
                "ArnEquals": {
                    "kms:EncryptionContext:aws:logs:arn": "arn:aws:logs:${var.region}${data.aws_caller_identity.current.account_id}:log-group:${var.log_name}"
                }
            }
        }
    ]
}
POLICY
}
