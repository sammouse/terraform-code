#Terraform block , required version allows only that terraform if wont allow to update
terraform {
  required_version = "1.0.7"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.60.0"
    }
  }
 }

provider "aws" {
  region = var.aws_reg
  profile = "default"
}