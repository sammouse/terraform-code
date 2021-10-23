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

module "ec2-module" {
  source = "../modules/ec2build"
  aws_instance_type = var.aws_instance_type
  vpc_cidr = var.vpc_cidr
  vpc_public_subnets = var.vpc_public_subnets
  
}