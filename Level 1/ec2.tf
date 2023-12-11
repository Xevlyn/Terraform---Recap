resource "aws_instance" "Instance-1" {
  ami               = "ami-093467ec28ae4fe03"
  instance_type     = "t2.nano"
  subnet_id         = aws_subnet.Net-1.id
  security_groups = [aws_security_group.instance-sg.id]
  availability_zone    = "us-west-2b"

  tags = {
    Name = "Terraform instance 1"
  }
}

resource "aws_instance" "Instance-2" {
  ami               = "ami-093467ec28ae4fe03"
  instance_type     = "t2.micro"
  subnet_id         = aws_subnet.Net-2.id
  security_groups = [aws_security_group.instance-sg.id]
  availability_zone    = "us-west-2d"

  tags = {
    Name = "Terraform instance 2"
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"

}




################################

resource "aws_security_group" "instance-sg" {
  name        = "instance-sg"
  description = "Example Security Group for EC2 Instance"
  vpc_id      = aws_vpc.testNet.id

  ingress {
    description = "SSH remote access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Test connection to"
    from_port   = -1 // indicates all ICMP port types
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "GrayyNet-TF-sg"
  }
}