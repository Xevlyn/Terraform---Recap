# VPC
resource "aws_vpc" "testNet" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "GrayyNet-MainNet"
  }
}




# Subnets
resource "aws_subnet" "Net-1" {
  vpc_id     = aws_vpc.testNet.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "GrayyFoxx-Public-1"
  }
}

resource "aws_subnet" "Net-2" {
  vpc_id     = aws_vpc.testNet.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "GrayyFoxx-Public-2"
  }
}

resource "aws_subnet" "Net-3" {
  vpc_id     = aws_vpc.testNet.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "GrayyFoxx-Private-1"
  }
}

resource "aws_subnet" "Net-4" {
  vpc_id     = aws_vpc.testNet.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "GrayyFoxx-Private-2"
  }
}





/////////////////////////////////

#Route table
resource "aws_route_table" "rt-1" {
  vpc_id = aws_vpc.testNet.id

  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "GrayyNet-Private-rt"
  }
}

resource "aws_route_table" "rt-2" {
  vpc_id = aws_vpc.testNet.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "GrayyNet-Public-rt"
  }
}







#Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.testNet.id

  tags = {
    Name = "GrayyNet-Internet-Gateway"
  }
}
# Public NAT gateway

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.Net-1.id

  tags = {
    Name = "gw NAT"
  }

}

resource "aws_eip" "nat" {
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}





