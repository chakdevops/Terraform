# locals {
#   name = "Arun Kumar CH - DevOps Engineer"
#   training = "DevOps Training"
#   instance_type = var.isProd ? "t3.small" : "t2.micro"
# }

# locals is just like variables, but it have some extra capabilities. 
# you can keep functions and expressions inside locals and use them

locals {
  name = "Arun Kumar CH - DevOps Engineer"
  training = "DevOps Training"
  instance_type = var.isProd ? "t3.small" : "t2.micro"
  
  # Example: Simplifying AWS Security Group Rules with locals and for_each
  ingress_rules = [
    {
      description = "Allow HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "Allow HTTPS"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "Allow SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["203.0.113.0/24"]
    }
  ]
  

}