module "elastic" {
  source = "../../"
  common_tags = {
    "createdby" = "terraform"
  "module" = "terraform-aws-elastic" }
  subnets       = ["subnet-ebd9cead", "subnet-11438974", "subnet-f60eff81"]
  vpc           = "vpc-510efa34"
  cw_kms_key_id = aws_kms_key.elastic.id
  log_name      = var.log_name
}
