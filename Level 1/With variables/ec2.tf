resource "aws_instance" "Instance-1" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    Name = var.ec-tag
  }
}

# SG
resource "aws_security_group" "instance-sg" {
  name        = var.sg-name
  description = var.description
  vpc_id      = aws_vpc.GrayyNet.id

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
    Name = var.sg-name-tag
  }
}
