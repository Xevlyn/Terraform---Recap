###########################################################################################
# Example - 1
###########################################################################################
# Local Variables Block
locals {
  test_tags = {
    Owner = "DevOps Team"
    email = "xevlyn@amazon.co"
    time  = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }
  prod_tags = {
    Owner = "Production Team"
    email = "xevlyn@amazon.co"
    time  = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())

  }
  dev_tags = {
    Owner = "Development Team"
    email = "xevlyn@amazon.co"
    time  = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }

  dev_tags_2 = {
    Owner = "Development Team 2"
    email = "xevlyn@amazon.co"
    time  = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }
}




