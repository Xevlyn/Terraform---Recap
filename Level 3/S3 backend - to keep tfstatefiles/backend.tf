terraform {
  backend "s3" {
    bucket = "terraform-info"             //bucket created
    key    = "terraform-statefiles/solo.tfstate" //object file name or object path.
    // You name the statefile here. I has nothing to do with the path to
    // the secret key and access key since it contain region and profile already.
    // the .tfstate file is the name you wish to gove for you statefile.
    region  = "us-west-2"
    profile = "default"
    //dynamodb_table = ""
  }
}