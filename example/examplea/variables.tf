variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "subnets" {
  type = list(any)
}

variable "log_name" {
  default = "elasticsearch"
}
