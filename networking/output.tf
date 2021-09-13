output "management-useast1-public-us-east-1a-sn" {
  value = module.aws-vpc-us-east-1.public_subnet_us_east_1a_id
}

output "management-useast1-public-us-east-1b-sn" {
  value = module.aws-vpc-us-east-1.public_subnet_us_east_1b_id
}

output "management-useast1-public-us-east-1c-sn" {
  value = module.aws-vpc-us-east-1.public_subnet_us_east_1c_id
}

output "management-useast1-public-us-east-1d-sn" {
  value = module.aws-vpc-us-east-1.public_subnet_us_east_1d_id
}

output "management-useast1-public-us-east-1e-sn" {
  value = module.aws-vpc-us-east-1.public_subnet_us_east_1e_id
}

output "management-useast1-public-us-east-1f-sn" {
  value = module.aws-vpc-us-east-1.public_subnet_us_east_1f_id
}

output "management-useast1-private-us-east-1a-sn" {
  value = module.aws-vpc-us-east-1.private_subnet_us_east_1a_id
}

output "management-useast1-private-us-east-1b-sn" {
  value = module.aws-vpc-us-east-1.private_subnet_us_east_1b_id
}

output "management-useast1-private-us-east-1c-sn" {
  value = module.aws-vpc-us-east-1.private_subnet_us_east_1c_id
}

output "management-useast1-private-us-east-1d-sn" {
  value = module.aws-vpc-us-east-1.private_subnet_us_east_1d_id
}

output "management-useast1-private-us-east-1e-sn" {
  value = module.aws-vpc-us-east-1.private_subnet_us_east_1e_id
}

output "management-useast1-private-us-east-1f-sn" {
  value = module.aws-vpc-us-east-1.private_subnet_us_east_1f_id
}

output "management-useast1-bastion-security-group" {
  value = module.aws-vpc-us-east-1.bastion_security_group_id
}

output "management-useast1-cluster-security-group" {
  value = module.aws-vpc-us-east-1.cluster_security_group_id
}

output "management-useast1-private-security-group" {
  value = module.aws-vpc-us-east-1.private_security_group_id
}

output "management-useast1-public-security-group" {
  value = module.aws-vpc-us-east-1.public_security_group_id
}

output "dns_private_zone_id" {
  value = module.aws-vpc-us-east-1.dns_private_zone_id
}

output "dns_reverse_zone_id" {
  value = module.aws-vpc-us-east-1.dns_reverse_zone_id
}
