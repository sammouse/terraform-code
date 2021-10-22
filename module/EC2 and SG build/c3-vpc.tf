module "myvpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.7.0"
  name = var.vpc_name
  cidr = var.vpc_cidr
  azs                 = var.az_list
#   private_subnets     = var.vpc_private_subnets
  public_subnets      = var.vpc_public_subnets
#   enable_nat_gateway = var.vpc_enable_nat_gateway
#   single_nat_gateway = var.vpc_single_nat_gateway
  enable_dns_hostnames = true
  enable_dns_support   = true
#   private_subnet_tags = {
#       Name = "private-subnet"
#   }
  public_subnet_tags = {
      Name = "public-subnet"
  }

  tags = {
      Owner = "sam"
      Environment ="dev"
  }

  vpc_tags = {
      Name = "vpc-dev"
  }
}