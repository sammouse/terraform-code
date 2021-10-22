
module "ec2-bastion-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.1.0"
  # insert the 34 required variables here

  name = "${var.environment}-public-instance"
  

  ami                    = data.aws_ami.myami.id
  instance_type          = var.aws_instance_type
  key_name               = var.key_pair
  
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  subnet_id              = module.myvpc.public_subnets[0]

  tags = local.common_tags
}
