output "vpc_id" {
    description = "vpc ID"
    value = module.myvpc.vpc_id  
}

output "private_subnet" {
    description = "private_subnet"
    value = module.myvpc.private_subnets
}

output "public_subnet" {
    description = "public_subnet"
    value = module.myvpc.public_subnets
}

output "nat_public_ip" {
    description = "nat IP"
    value = module.myvpc.nat_public_ips  
}