# VPC
resource "aws_vpc" "GrayyNet" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.vpc-name
  }
}

# Subnets
resource "aws_subnet" "GrayyNet-Sub-1" {
  vpc_id     = aws_vpc.GrayyNet.id
  cidr_block = var.subnet-cidr

  tags = {
    Name = var.subnet-name
  }
}

