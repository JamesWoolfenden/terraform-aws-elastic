resource "aws_cloudwatch_log_group" "examplea" {
  # checkov:skip=CKV_AWS_338: retention configurable via var.retention
  name              = var.log_name
  retention_in_days = var.retention
  kms_key_id        = var.kms_key_id
  tags              = var.common_tags
}
variable "cw_kms_key_id" {

}
