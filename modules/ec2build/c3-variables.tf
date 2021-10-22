# aws region

variable "aws_reg" {
    description = "region in which aws launches"
    type = string
    default = "us-east-1"
  }

#VPC name
variable "vpc_name" {
  description = "VPC name"
  type = string
  default = "myvpc"  
}

#VPC CIDR block
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type = string
  default = "10.0.0.0/16"  
}

#Availability zone
variable "az_list" {
  description = "list of availability zone"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]  
}

#public subnet
variable "vpc_public_subnets" {
  description = "vpc public subnet"
  type = list(string)
  default = ["10.0.3.0/24","10.0.4.0/24"]
}

# Input Variables

# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "sap"
}

# instate type
variable "aws_instance_type" {
    type = string
    default = "t2.micro"
    description = "instance type for ec2" 
}

# keypair
variable "key_pair" {
  type = string
  description = "key pair used for instance"
  default = "terraformkey"
}

