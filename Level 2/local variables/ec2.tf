resource "aws_instance" "test1" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"
  tags          = merge(local.test_tags, { Name = "Test-Environment" })
}


resource "aws_instance" "test2" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"
  tags          = merge(local.dev_tags, { Name = "Development" })
}

resource "aws_instance" "test3" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"
  tags          = merge(local.prod_tags, { Name = "Production" })
}

resource "aws_instance" "Development 2" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"
  tags          = merge(local.dev_tags_2, { Name = "Development 2" })
}