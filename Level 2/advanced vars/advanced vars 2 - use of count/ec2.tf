// Another method of placing the 2 into one group of code is seen below

resource "aws_instance" "testing"{
  count = length(var.ec2_name_tag)
  ami           = var.ami_id[count.index] 
  instance_type = var.instance_type[count.index]


  tags = {
    Name = var.ec2_name_tag[count.index]
  }
}