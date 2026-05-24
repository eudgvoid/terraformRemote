variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_id" {
  description = "the project identifier used for tagging"
  type        = string
}

variable "state_bucket" {
  description = "S3 bucket name that stores the remote state"
  type        = string
}

variable "state_key" {
  description = "S3 key path to the remote state file"
  type        = string
}
