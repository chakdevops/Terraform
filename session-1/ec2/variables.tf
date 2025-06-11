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
variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
  #type = string
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}