module "elastic" {
  source      = "../../"
  common_tags = var.common_tags
  subnets     = var.subnets
  vpc         = "vpc-510efa34"
}
