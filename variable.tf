variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "key_name" {
  description = "SSH key name for EC2 access"
  type        = string
}
