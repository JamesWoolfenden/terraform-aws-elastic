variable "vpc" {
  description = "VPC ID where to launch ElasticSearch cluster"
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

variable "common_tags" {
  type = map(any)
}
