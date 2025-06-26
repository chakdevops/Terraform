resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
  name        = var.sg-name # this is for AWS
  description = var.sg-description

  ingress {
    description      = "Allow All ports"
    from_port   = var.inbound-from-port
    to_port     = 0 # 0 means all ports
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
    egress {
        description      = "Allow All outbound traffic"
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # -1 means all protocols
        cidr_blocks = var.cidr_blocks
    }

  
  tags = {
    Name        = "roboshop-all-aws" # this is for AWS
    
  }
}