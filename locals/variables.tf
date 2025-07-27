variable "isProd" {
  description = "Flag to indicate if the environment is production"
  type        = bool
  default     = true
  
}

variable "ami_id" {
  description = "DevOps-Practice AMI"
  type        = string
  default     = "ami-0b4f379183e5706b9" # "DevOps-Practice AMI"
}

variable "zone_id" {
  type = string
  default = "Z0626673388N3YAXTBSTL" # arun69.shop
}

variable "domain_name" {
  type = string
  default = "arun69.shop"   # Domain name for Roboshop project
}