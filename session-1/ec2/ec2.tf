# This file contains the configuration for creating an EC2 instance and a security group
# in AWS using Terraform.

resource "aws_instance" "web" {
  #ami           = "ami-0b4f379183e5706b9" # devops-practice
  ami = var.ami_id # this is variable from variables.tf
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_allow_all.id] # [...] this means list
  
  tags = {
    Name = "HelloTerraform"
  }
}

resource "aws_security_group" "roboshop_allow_all" {  #this is terraform name, for terraform reference only
  #name        = "roboshop_allow_all_aws" #this is for AWS
  name        = var.sg_name #this is for AWS
  description = "Allow all inbound traffic"
  ingress {
        description      = "Allow All ports"
        from_port        = var.inbound-from-port # 0 means all ports
        to_port          = 0 
        protocol         = "tcp"
        cidr_blocks      = var.cidr_blocks
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "roboshop-all-aws"
    }
}