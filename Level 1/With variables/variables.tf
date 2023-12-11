//vpc
variable "vpc-cidr" {
  default = "10.0.0.0/16"
}
variable "instance_tenancy" {
  default = "default"
}
variable "vpc-name" {
  default = "GrayyNet-MainNet"
}

variable "subnet-cidr" {
  default = "10.0.1.0/24"
}
variable "subnet-name" {
  default = "GrayyFoxx-Public-1"
}



// ec2 instance variables
variable "ami_id" {
  default = "ami-093467ec28ae4fe03"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "ec-tag" {
  default = "Terraform instance"
}


//Security Group
variable "sg-name-tag" {
  default = "GrayyNet-TF-sg"
}
variable "sg-name" {
  default = "TF-sg"
}
variable "description" {
  default = "Example Security Group for EC2 Instance"
}
variable "sg" {
    default = "aws_security_group.instance-sg.id"
    type = string
}




//region
variable "region" {
  default = "us-west-2"
}
variable "availability_zone" {
  default = "us-west-2b"
}
variable "profile" {
  default = "default"
}

