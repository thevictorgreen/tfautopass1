# NACL RULES
resource "aws_network_acl_rule" "private_network_acl_rule_100" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 100
  egress         = false
  protocol       = 6
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 22
  to_port        = 22
}


resource "aws_network_acl_rule" "private_network_acl_rule_110" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 110
  egress         = false
  protocol       = 6
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 80
  to_port        = 80
}


resource "aws_network_acl_rule" "private_network_acl_rule_120" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 120
  egress         = false
  protocol       = 6
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 443
  to_port        = 443
}


resource "aws_network_acl_rule" "private_network_acl_rule_130" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 130
  egress         = false
  protocol       = 6
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 1024
  to_port        = 65535
}


resource "aws_network_acl_rule" "private_network_acl_rule_140" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 140
  egress         = false
  protocol       = 17
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 1024
  to_port        = 65535
}


resource "aws_network_acl_rule" "private_network_acl_rule_150" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 150
  egress         = false
  protocol       = 1
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  icmp_type      = -1
  icmp_code      = -1
  from_port      = -1
  to_port        = -1
}


resource "aws_network_acl_rule" "private_network_acl_rule_160" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 160
  egress         = true
  protocol       = 6
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 0
  to_port        = 65535
}


resource "aws_network_acl_rule" "private_network_acl_rule_170" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 170
  egress         = true
  protocol       = 17
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 0
  to_port        = 65535
}


resource "aws_network_acl_rule" "private_network_acl_rule_180" {
  network_acl_id = module.aws-vpc-us-east-1.private_network_acl_id
  rule_number    = 180
  egress         = true
  protocol       = 1
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  icmp_type      = -1
  icmp_code      = -1
  from_port      = -1
  to_port        = -1
}


# SECURITY GROUP RULES
resource "aws_security_group_rule" "private_security_group_rule_100" {
  security_group_id = module.aws-vpc-us-east-1.private_security_group_id
  type        = "ingress"
  protocol    = "tcp"
  from_port   = 22
  to_port     = 22
  cidr_blocks = ["0.0.0.0/0"]
}


resource "aws_security_group_rule" "private_security_group_rule_110" {
  security_group_id = module.aws-vpc-us-east-1.private_security_group_id
  type        = "ingress"
  protocol    = "tcp"
  from_port   = 80
  to_port     = 80
  cidr_blocks = ["0.0.0.0/0"]
}


resource "aws_security_group_rule" "private_security_group_rule_120" {
  security_group_id = module.aws-vpc-us-east-1.private_security_group_id
  type        = "ingress"
  protocol    = "tcp"
  from_port   = 443
  to_port     = 443
  cidr_blocks = ["0.0.0.0/0"]
}


resource "aws_security_group_rule" "private_security_group_rule_130" {
  security_group_id = module.aws-vpc-us-east-1.private_security_group_id
  type        = "ingress"
  protocol    = "icmp"
  from_port   = -1
  to_port     = -1
  cidr_blocks = ["0.0.0.0/0"]
}


resource "aws_security_group_rule" "private_security_group_rule_140" {
  security_group_id = module.aws-vpc-us-east-1.private_security_group_id
  type        = "egress"
  protocol    = -1
  from_port   = 0
  to_port     = 0
  cidr_blocks = ["0.0.0.0/0"]
}
