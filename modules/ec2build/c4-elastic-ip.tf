resource "aws_eip" "elastic-ip" {
    depends_on = [
      module.ec2-bastion-instance,
      module.myvpc
      
    ]
  instance = module.ec2-bastion-instance.id
  vpc      = true
  tags = local.common_tags
}

