resource "aws_cloudwatch_log_group" "examplea" {
  name              = "elasticsearch"
  retention_in_days = 90
}
