
resource "aws_security_group" "es_sg" {
  name        = var.es_domain
  description = "Allow inbound traffic to ElasticSearch from VPC CIDR"
  vpc_id      = var.vpc

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
      var.vpc_cidr
    ]
  }
}

resource "aws_iam_service_linked_role" "es1" {
  aws_service_name = "es.amazonaws.com"
}

resource "aws_elasticsearch_domain" "es1" {
  domain_name           = var.es_domain
  elasticsearch_version = "7.1"

  log_publishing_options {
    cloudwatch_log_group_arn = aws_cloudwatch_log_group.examplea.arn
    log_type                 = "INDEX_SLOW_LOGS"
  }

  domain_endpoint_options {
    enforce_https       = true
    tls_security_policy = "Policy-Min-TLS-1-2-2019-07"
  }

  cluster_config {
    instance_type = "t2.medium.elasticsearch"
  }

  vpc_options {
    subnet_ids = var.subnets
    security_group_ids = [
      aws_security_group.es_sg.id
    ]
  }

  ebs_options {
    ebs_enabled = true
    volume_size = 10
  }

  access_policies = <<CONFIG
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Action": "es:*",
          "Principal": "*",
          "Effect": "Allow",
          "Resource": "arn:aws:es:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:domain/${var.es_domain}/*"
      }
  ]
}
  CONFIG

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  encrypt_at_rest {
    enabled = true
  }
  tags = var.common_tags
}
