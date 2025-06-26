variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-1"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
}