
resource "aws_elasticsearch_domain" "examplea" {
  domain_name           = var.es_domain
  elasticsearch_version = var.es_version


  advanced_options = {
  }

  advanced_security_options {
    enabled = var.advanced_security_options
    /*
  enabled - (Required, Forces new resource) Whether advanced security is enabled
internal_user_database_enabled - (Optional, Default: false) Whether the internal user database is enabled. If not set, defaults to false by the AWS API.
master_user_options - (Optional) Credentials for the master user: username and password, or ARN
master_user_arn - (Optional) ARN for the master user. Only specify if internal_user_database_enabled is not set or set to false)
master_user_name - (Optional) The master user's username, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true.
master_user_password - (Optional) The master user's password, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if internal_user_database_enabled is set to true.
*/
  }

  /*
  cognito_options {

    enabled = false
    user_pool_id - (Required) ID of the Cognito User Pool to use
identity_pool_id - (Required) ID of the Cognito Identity Pool to use
role_arn - (Required) ARN of the IAM role that has the AmazonESCognitoAccess policy attached
 }*/

  log_publishing_options {
    cloudwatch_log_group_arn = aws_cloudwatch_log_group.examplea.arn
    log_type                 = var.log_publishing_options_type
  }

  domain_endpoint_options {
    enforce_https       = true
    tls_security_policy = "Policy-Min-TLS-1-2-2019-07"
  }

  cluster_config {
    instance_type            = var.instance_type
    instance_count           = var.instance_count
    dedicated_master_enabled = var.dedicated_master_enabled
    dedicated_master_count   = var.dedicated_master_count
    dedicated_master_type    = var.dedicated_master_type
    zone_awareness_enabled   = var.es_zone_awareness
    zone_awareness_config {
      availability_zone_count = 2
      // Number of Availability Zones for the domain to use with zone_awareness_enabled. Defaults to 2. Valid values: 2 or 3.

    }

    warm_enabled = false
    //2-150
    warm_count = 2
    warm_type  = "ultrawarm1.medium.elasticsearch"
  }

  vpc_options {
    subnet_ids = var.subnets
    security_group_ids = [
      aws_security_group.examplea.id
    ]
  }

  ebs_options {
    ebs_enabled = true
    volume_size = var.ebs_volume_size
    volume_type = var.ebs_volume_type
  }

  snapshot_options {
    automated_snapshot_start_hour = var.snapshot_start_hour
  }

  encrypt_at_rest {
    enabled = true
    //default is aws/es
    kms_key_id = var.kms_key_id
  }

  //add check
  node_to_node_encryption {
    enabled = true
  }

  depends_on = [aws_iam_service_linked_role.examplea]

  tags = var.common_tags
}

variable "log_publishing_options_type" {
  default = "AUDIT_LOGS"
  validation {
    condition     = can(regex("INDEX_SLOW_LOGS|SEARCH_SLOW_LOGS|ES_APPLICATION_LOGS|AUDIT_LOGS", var.log_publishing_options_type))
    error_message = "A type of Elasticsearch log. Valid values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, AUDIT_LOGS."
  }
}
