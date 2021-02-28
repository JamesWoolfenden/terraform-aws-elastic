resource "aws_elasticsearch_domain_policy" "examplea" {
  domain_name = aws_elasticsearch_domain.examplea.domain_name

  access_policies = <<POLICIES
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Resource": "${aws_elasticsearch_domain.examplea.arn}"
        }
    ]
}
POLICIES
}
