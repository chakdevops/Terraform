# 1. command line
# 2. -var-file
# 3. terraform.tfvars
# 4. ENV variables
variable "instance_names" {
    type = list(string)
    default = [ "mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web" ]
}

variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9" # DevOps-Practice AMI   
}

variable "zone_id" {
  type = string
  default = "Z0626673388N3YAXTBSTL" # arun69.shop
}

variable "domain_name" {
  type = string
  default = "arun69.shop"   # Domain name for Roboshop project
}

