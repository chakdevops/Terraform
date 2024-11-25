resource "aws_instance" "web" {
  #ami           = "ami-0b4f379183e5706b9" # devops-practice
  ami = var.ami_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_allow_all.id] # [...] this means list
  #vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "HelloTerraform"
  }
}
resource "aws_security_group" "roboshop_allow_all" {  #this is terraform name, for terraform reference only
  #name        = "roboshop_allow_all_aws" #this is for AWS
  name        = var.sg_name #this is for AWS
  description = "Allow all inbound traffic"
  # vpc_id    = aws_vpc.main.id
   tags = {
    Name = "roboshop_allow_all_aws"
  }
 }
resource "aws_vpc_security_group_ingress_rule" "roboshop_allow_all_ports" {
  security_group_id = aws_security_group.roboshop_allow_all.id
  #security_group_id = var.sg_id
  #cidr_ipv4        = aws_vpc.main.cidr_block
    
    #cidr_ipv4         = "0.0.0.0/0"
    cidr_ipv4         = var.sg_cidr_block
    from_port         = 0 # 0 means all ports
    ip_protocol       = "tcp"
    to_port           = 0
}
resource "aws_vpc_security_group_egress_rule" "roboshop_allow_all_traffic" {
  security_group_id = aws_security_group.roboshop_allow_all.id
  #security_group_id = var.sg_id
  #cidr_ipv4         = "0.0.0.0/0"
  cidr_ipv4         = var.sg_cidr_block
  ip_protocol       = "-1" # semantically equivalent to all ports
}




