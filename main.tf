# required

resource "aws_iam_service_linked_role" "examplea" {
  aws_service_name = "es.amazonaws.com"
}
