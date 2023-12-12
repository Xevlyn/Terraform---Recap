resource "aws_instance" "test" {
  ami           = var.ami_id["linux"]
  instance_type = var.instance_type[0]
  // count = 3
  tags = {
    Name = var.ec2_name_tag[0]
  }
}
resource "aws_instance" "test2" {
  ami           = var.ami_id["ubuntu"]
  instance_type = var.instance_type[1]
  tags = {
    Name = var.ec2_name_tag[1]
  }
}

// Another method of placing the 2 into one group of code is seen below

# resource "aws_instance" "testing"{
#   count = length(var.ec2_name_tag)
#   ami           = var.ami_ids[count.index] 
#   instance_type = var.instance_type[count.index]


#   tags = {
#     Name = var.ec2_name_tag[count.index]
#   }
# }