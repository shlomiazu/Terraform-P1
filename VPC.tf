resource "aws_vpc" "EM1-VPC" {
  cidr_block           = "192.168.0.0/16"
  instance_tenancy     = "default"
  availability_zone       = "us-east-1a"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "EM1-VPC"
  }
}



