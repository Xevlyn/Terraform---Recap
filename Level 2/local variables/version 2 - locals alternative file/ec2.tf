resource "aws_instance" "app-dev" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_instance" "db-dev" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.small"
  tags          = merge(local.dev_tags.test1, { Name = "test1-instance" })
}

resource "aws_instance" "db-dev2" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.small"
  tags          = merge(local.dev_tags.test2, { Name = "test2-instance" })
}
resource "aws_instance" "db-dev3" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.small"
  tags          = merge(local.dev_tags.test3, { Name = "test3-instance" })
}

# resource "aws_ebs_volume" "db_ebs" {
#   availability_zone = "us-west-2a"
#   size              = 8
#   tags = local.common_tags
# }