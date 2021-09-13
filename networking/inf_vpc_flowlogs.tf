module "aws-vpc-us-east-1" {
  source = "git@github.com:thevictorgreen/devopsify-terraform-mod-aws-vpc-us-east-1.git?ref=v0.1.1"

  # inf_01_vpc_flowlogs
  environment                                = var.environment
  proto_vpc_cidr_block                       = var.proto_vpc_cidr_block
  proto_vpc_instance_tenancy                 = var.proto_vpc_instance_tenancy
  proto_vpc_enable_dns_support               = var.proto_vpc_enable_dns_support
  proto_vpc_enable_dns_hostnames             = var.proto_vpc_enable_dns_hostnames
  proto_vpc_enable_classiclink               = var.proto_vpc_enable_classiclink
  proto_vpc_enable_classiclink_dns_support   = var.proto_vpc_enable_classiclink_dns_support
  proto_vpc_assign_generated_ipv6_cidr_block = var.proto_vpc_assign_generated_ipv6_cidr_block
  vpc_accept_flow_logs_destination           = var.vpc_accept_flow_logs_destination
  vpc_reject_flow_logs_destination           = var.vpc_reject_flow_logs_destination

  public_subnet_us_east_1a_cidr_block              = var.public_subnet_us_east_1a_cidr_block
  public_subnet_us_east_1a_map_public_ip_on_launch = var.public_subnet_us_east_1a_map_public_ip_on_launch

  public_subnet_us_east_1b_cidr_block              = var.public_subnet_us_east_1b_cidr_block
  public_subnet_us_east_1b_map_public_ip_on_launch = var.public_subnet_us_east_1b_map_public_ip_on_launch

  public_subnet_us_east_1c_cidr_block              = var.public_subnet_us_east_1c_cidr_block
  public_subnet_us_east_1c_map_public_ip_on_launch = var.public_subnet_us_east_1c_map_public_ip_on_launch

  public_subnet_us_east_1d_cidr_block              = var.public_subnet_us_east_1d_cidr_block
  public_subnet_us_east_1d_map_public_ip_on_launch = var.public_subnet_us_east_1d_map_public_ip_on_launch

  public_subnet_us_east_1e_cidr_block              = var.public_subnet_us_east_1e_cidr_block
  public_subnet_us_east_1e_map_public_ip_on_launch = var.public_subnet_us_east_1e_map_public_ip_on_launch

  public_subnet_us_east_1f_cidr_block              = var.public_subnet_us_east_1f_cidr_block
  public_subnet_us_east_1f_map_public_ip_on_launch = var.public_subnet_us_east_1f_map_public_ip_on_launch

  private_subnet_us_east_1a_cidr_block              = var.private_subnet_us_east_1a_cidr_block
  private_subnet_us_east_1a_map_public_ip_on_launch = var.private_subnet_us_east_1a_map_public_ip_on_launch

  private_subnet_us_east_1b_cidr_block              = var.private_subnet_us_east_1b_cidr_block
  private_subnet_us_east_1b_map_public_ip_on_launch = var.private_subnet_us_east_1b_map_public_ip_on_launch

  private_subnet_us_east_1c_cidr_block              = var.private_subnet_us_east_1c_cidr_block
  private_subnet_us_east_1c_map_public_ip_on_launch = var.private_subnet_us_east_1c_map_public_ip_on_launch

  private_subnet_us_east_1d_cidr_block              = var.private_subnet_us_east_1d_cidr_block
  private_subnet_us_east_1d_map_public_ip_on_launch = var.private_subnet_us_east_1d_map_public_ip_on_launch

  private_subnet_us_east_1e_cidr_block              = var.private_subnet_us_east_1e_cidr_block
  private_subnet_us_east_1e_map_public_ip_on_launch = var.private_subnet_us_east_1e_map_public_ip_on_launch

  private_subnet_us_east_1f_cidr_block              = var.private_subnet_us_east_1f_cidr_block
  private_subnet_us_east_1f_map_public_ip_on_launch = var.private_subnet_us_east_1f_map_public_ip_on_launch

  # inf_07_route53.tf
  dns_private_zone_name = var.dns_private_zone_name
  dns_reverse_zone_name = var.dns_reverse_zone_name
}
