output "bastion_security_group_id" {
    description = "vpc ID"
    value = module.public_bastion_sg.security_group_id
}

output "bastion_security_group_name" {
    description = "private_subnet"
    value = module.public_bastion_sg.security_group_name
}

output "bastion_security_group_vpc_id" {
    description = "public_subnet"
    value = module.public_bastion_sg.security_group_vpc_id
}
