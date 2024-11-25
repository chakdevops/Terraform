variable "aws_region" {
  description   = "AWS region"
  type          = string
  default       = "us-east-1"
}
variable "ami_id" {
  description = "AMI"
  type = string
  default = "ami-0b4f379183e5706b9"
}
variable "sg_name" {
  description   = "AWS Security Group Name"
  type          = string
  default       = "roboshop_allow_all_aws"
}
variable "sg_cidr_block" {
  description   = "CIDR block for Security Group"
  type          = string
  default       = "10.0.0.0/16"
}
variable "sg_id" {
    description = "Security group id"
    type = string
    default     = "aws_security_group.roboshop_allow_all.id"
}