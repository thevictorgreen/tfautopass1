variable "region" {
  type = map(string)
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

# inf_01_vpc_flowlogs
variable "environment" {
  type = string
  default = "management"
}

variable "proto_vpc_cidr_block" {
  description = "Slash 16 cidr block for this vpc"
  type = string
  default = "10.10.0.0/16"
}

variable "proto_vpc_instance_tenancy" {
  description = "Instance Tenancy"
  type = string
  default = "default"
}

variable "proto_vpc_enable_dns_support" {
  description = "Dns Support"
  type = bool
  default = true
}

variable "proto_vpc_enable_dns_hostnames" {
  description = "DNS Hostnames"
  type = bool
  default = false
}

variable "proto_vpc_enable_classiclink" {
  description = "Classic Link"
  type = bool
  default = false
}

variable "proto_vpc_enable_classiclink_dns_support" {
  description = "Classic Link DNS Support"
  type = bool
  default = false
}

variable "proto_vpc_assign_generated_ipv6_cidr_block" {
  description = "Generate IPV6 CIDR Block"
  type = bool
  default = false
}

variable "vpc_accept_flow_logs_destination" {
  description = "Log Destination"
  type = string
  default = "arn:aws:s3:::onekloud-swagwatch.io-management-infra/vpclogs/accept"
}

variable "vpc_reject_flow_logs_destination" {
  description = "Log Destination"
  type = string
  default = "arn:aws:s3:::onekloud-swagwatch.io-management-infra/vpclogs/reject"
}

variable "public_subnet_us_east_1a_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.0.0/24"
}

variable "public_subnet_us_east_1a_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1b_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.1.0/24"
}

variable "public_subnet_us_east_1b_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1c_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.2.0/24"
}

variable "public_subnet_us_east_1c_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1d_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.3.0/24"
}

variable "public_subnet_us_east_1d_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1e_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.4.0/24"
}

variable "public_subnet_us_east_1e_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1f_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.5.0/24"
}

variable "public_subnet_us_east_1f_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "private_subnet_us_east_1a_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.6.0/24"
}

variable "private_subnet_us_east_1a_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1b_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.7.0/24"
}

variable "private_subnet_us_east_1b_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1c_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.8.0/24"
}

variable "private_subnet_us_east_1c_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1d_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.9.0/24"
}

variable "private_subnet_us_east_1d_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1e_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.10.0/24"
}

variable "private_subnet_us_east_1e_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1f_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "10.10.11.0/24"
}

variable "private_subnet_us_east_1f_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}


# inf_07_route53.tf
variable "domain" {
  description = "Primary domain for this vpc"
  type = string
  default = "swagwatch.io"
}

data "aws_route53_zone" "dns_public_zone" {
  name = "swagwatch.io."
  private_zone = false
}

variable "dns_private_zone_name" {
  description = "private_zone"
  type = string
  default = "management.swagwatch.io."
}

data "aws_route53_zone" "dns_private_zone" {
  name = "management.swagwatch.io."
  private_zone = true
}

variable "dns_reverse_zone_name" {
  description = "reverse zone"
  type = string
  default = "10.10.in-addr.arpa."
}

data "aws_route53_zone" "dns_reverse_zone" {
  name = "10.10.in-addr.arpa."
  private_zone = true
}


# other variables
variable "subnets" {
  type = map(string)
  default = {
    "management-useast1-private-us-east-1a-sn" = "subnet-00a85b87bd2a2f8ec"
    "management-useast1-private-us-east-1b-sn" = "subnet-0f8db501d680fb97e"
    "management-useast1-private-us-east-1c-sn" = "subnet-0400323ae2095be44"
    "management-useast1-private-us-east-1d-sn" = "subnet-0ef35102d3070d51d"
    "management-useast1-private-us-east-1e-sn" = "subnet-046cd67f06c273fd1"
    "management-useast1-private-us-east-1f-sn" = "subnet-099f77ed401842924"

    "management-useast1-public-us-east-1a-sn" = "subnet-0e2beb0fe0dbb149c"
    "management-useast1-public-us-east-1b-sn" = "subnet-03f4ec44262a43e2f"
    "management-useast1-public-us-east-1c-sn" = "subnet-050a9ed44b078a294"
    "management-useast1-public-us-east-1d-sn" = "subnet-069cee3868f7e3b11"
    "management-useast1-public-us-east-1e-sn" = "subnet-0715ea539bdcf4a02"
    "management-useast1-public-us-east-1f-sn" = "subnet-01fbabab8dd27c367"
  }
}

variable "secgroups" {
  type = map(string)
  default = {
    "management-useast1-bastion-security-group" = "sg-0e47ce98e66419956"
    "management-useast1-cluster-security-group" = "sg-0bba85ebf2163429d"
    "management-useast1-private-security-group" = "sg-004d37f9db1af6fab"
    "management-useast1-public-security-group"  = "sg-0755ccf3d6d65a730"
  }
}

variable "dns_private_zone_id" {
  default = "Z02812058LX26X3U0KPE"
}

variable "dns_reverse_zone_id" {
  default = "Z068450424YM6C96HPMPY"
}

variable "amis" {
  type = map(string)
  default = {
    "ubuntu_18_04" = "ami-064a0193585662d74"
    "centos_7" = "ami-02eac2c0129f6376b"
  }
}

variable "instance_type" {
  type = map(string)
  default = {
    "nano"    = "t2.nano"
    "micro"   = "t2.micro"
    "small"   = "t2.small"
    "medium"  = "t2.medium"
    "large"   = "t2.large"
    "xlarge"  = "t2.xlarge"
    "2xlarge" = "t2.2xlarge"
  }
}

variable "keypairs" {
  type = map(string)
  default = {
    "devops" = "devops"
  }
}

variable "public_key" {
  default = "z/devops.pub"
}

variable "private_key" {
  default = "z/devops.pem"
}

variable "ansible_user" {
  type = map(string)
  default = {
    "ubuntu_18_04" = "ubuntu"
    "centos_7" = "centos"
  }
}
