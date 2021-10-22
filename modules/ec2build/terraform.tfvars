# tfvars is like gloval variable , it overwrite local variable
aws_instance_type = "t2.medium"
vpc_cidr = "10.1.0.0/16"
vpc_public_subnets = ["10.1.3.0/24","10.1.4.0/24"]