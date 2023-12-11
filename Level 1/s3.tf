resource "aws_s3_bucket" "test" {
  bucket = "grayyfoxx999"

  tags = {
    Name        = "xev"
    Environment = "Dev"
  }
}