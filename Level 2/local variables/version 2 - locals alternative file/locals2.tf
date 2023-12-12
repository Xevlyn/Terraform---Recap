###########################################################################################
# Example - 2
###########################################################################################
locals {
  common_tags = {
    Owner   = "DevOps Team"
    service = "backend"
  }

  dev_tags = {
    # individual tags used for this case
    test1 = {
      Owner = "First Test"
      email = "aol.com"
    }
    test2 = {
      Owner = "Second Test"
      email = "gmail.com"
    }
    test3 = {
      Owner = "Third Test"
      email = "yahoo.com"
    }
  }
}