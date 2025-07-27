resource "aws_instance" "web" {
  ami = var.ami_id # devops-practice AMI
  instance_type = local.instance_type
  tags = {
    Name = "locals-example"
  }
}