variable "ec2_name_tag" {
  default = ["Web-server", "App-server"]
  type    = list
}

variable "instance_type" {
                #   0          1          2
  default = ["t2.medium", "t2.micro"]
  type    = list
}

# variable "ami_ids" {
#   // for the count.index
#   default = {
#     0: "ami-093467ec28ae4fe03",
#     1: "ami-0efcece6bed30fd98"
#   }
#   type = map
# }


variable "ami_id" {
  default = {
    "linux"  = "ami-093467ec28ae4fe03",
    "ubuntu" = "ami-0efcece6bed30fd98"
  }
  type = map
}

variable "region"{
  default = "us-west-2"
}

variable "profile"{ 
  default = "default"
}