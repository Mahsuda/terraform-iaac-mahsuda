terraform {
  backend "s3" {
    bucket = "mahsudaterraform"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}