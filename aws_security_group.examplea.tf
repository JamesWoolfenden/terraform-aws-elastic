resource "aws_security_group" "examplea" {
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
