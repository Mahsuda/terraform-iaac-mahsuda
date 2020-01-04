terraform {
  backend "s3" {
    bucket = "mahsudaterraform"
    key    = "infrastructure"
    region = "us-east-1"
  }
}