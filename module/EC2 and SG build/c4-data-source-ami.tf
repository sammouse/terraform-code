#data sources for choosing ami dynamically

data "aws_ami" "myami" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
} 

data "aws_availability_zones" "myaz" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}
