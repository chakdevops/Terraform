terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.77.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  #region = "us-east-1"
  region= var.aws_region
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
}