# module name can be anything "public_bastion_sg"

module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"
  # insert the 3 required variables here
  name = "SG-bastion-host"
  vpc_id = module.myvpc.vpc_id
  description = "SG for bastion host"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]
  #egress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules = ["all-all"]
  tags = local.common_tags
}