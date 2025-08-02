output "web_security_group_id" {
  value = aws_security_group.web_sg.id
}

output "web_security_group_rules" {
  value = aws_security_group_rule.ingress
}
 output "web_instance_id" {
  value = aws_instance.web.id
}

