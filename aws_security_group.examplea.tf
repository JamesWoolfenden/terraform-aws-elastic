resource "aws_security_group" "examplea" {
  # checkov:skip=CKV_AWS_382: Unrestricted outbound access required for resource functionality
  name        = var.es_domain
  description = "Allow inbound traffic to ElasticSearch from VPC CIDR"
  vpc_id      = var.vpc

  ingress {
    description = "Allow outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [
      var.vpc_cidr
    ]
  }
}
