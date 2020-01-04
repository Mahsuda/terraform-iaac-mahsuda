terraform {
  backend "s3" {
    bucket = "mahsuda-terraform-us-1"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}