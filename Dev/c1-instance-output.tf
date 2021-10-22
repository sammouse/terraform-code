output "ec2-bastion-instance-id" {
  description = "The ID of the instance"
  value       = module.ec2-bastion-instance.id
}

output "ec2-bastion-instance-public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2-bastion-instance.public_ip
}


