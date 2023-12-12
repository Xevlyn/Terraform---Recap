resource "aws_instance" "Instance-1" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}