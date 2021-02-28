variable "vpc" {
  description = "VPC ID where to launch ElasticSearch cluster"
  validation {
    condition     = can(regex("^vpc-", var.vpc))
    error_message = "Valid vpc_id start with vpc."
  }
}

variable "vpc_cidr" {
  description = "CIDR to allow connections to ElasticSearch"
  default     = "10.0.0.0/16"
}

variable "es_domain" {
  description = "ElasticSearch domain name"
  default     = "elastic"
}

variable "subnets" {
  type        = list(string)
  description = "List of VPC Subnet IDs to create ElasticSearch Endpoints in"
}

variable "ebs_volume_size" {
  description = "Optionally use EBS volumes for data storage by specifying volume size in GB (default 0)"
  default     = 0
}

variable "ebs_volume_type" {
  description = "Storage type of EBS volumes, if used (default gp2)"
  default     = "gp3"
}

variable "common_tags" {
  type = map(any)
}

variable "log_name" {
  default = "elasticsearch"
}

variable "retention" {
  type    = number
  default = 90
}

variable "es_version" {
  type    = string
  default = 7.1
}

variable "snapshot_start_hour" {
  type    = string
  default = "23"
}

variable "es_zone_awareness" {
  type    = bool
  default = true
}

variable "dedicated_master_type" {
  default = "t2.medium.elasticsearch"
}

variable "dedicated_master_count" {
  default = 1
}

variable "dedicated_master_enabled" {
  default = true
}
variable "instance_type" {
  default = ""
}


variable "instance_count" {
  default = 1
}

variable "kms_key_id" {
  default = "aws/es"
}

variable "advanced_security_options" {
  default = false
}
