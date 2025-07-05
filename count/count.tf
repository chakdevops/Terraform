resource "aws_instance" "web" {
  count = 11
  ami           = var.ami_id
  instance_type = "t2.micro"
  
    tags = {
    Name = var.instance_names[count.index]
  }
}
resource "aws_route53_record" "www" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = "1"
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip 
  : aws_instance.web[count.index].private_ip]
}