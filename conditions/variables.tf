variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9" # DevOps-Practice AMI   
}

variable instance_name{
    type = string
    default = "MongoDB"
    #default = "MySql"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "owners" {
  default = ["Arun", "DevOps", "Admin"]
}

variable "instance_count" {
  default = 3
}

variable "instance_names" {
  default = {
    app    = "t2.micro"
    db     = "t3.small"
    worker = "t2.small"
  }
}
