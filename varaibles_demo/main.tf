provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
     ami           = "ami-0b4f379183e5706b9"  # Devops Practice AMI
  #  ami           = "ami-09e6f87a47903347c"
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {
    Name = "TerraformExample-${count.index}"
  }
}