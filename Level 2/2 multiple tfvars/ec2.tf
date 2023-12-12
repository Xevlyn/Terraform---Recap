resource "aws_instance" "test" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.ec2_name_tag
  }
}
