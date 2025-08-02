resource "aws_instance" "web" {
  ami = var.ami_id # devops-practice AMI
  instance_type = local.instance_type
  tags = {
    Name = "locals-example"
  }
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Security group for web server"
  #vpc_id      = data.aws_vpc.existing.id  # Assume you're using a data source here
  vpc_id      = data.aws_vpc.default.id
}

resource "aws_security_group_rule" "ingress" {
  for_each = { for idx, rule in local.ingress_rules : idx => rule }

  type              = "ingress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.web_sg.id
  description        = each.value.description
}

