terraform {
  backend "s3" {
    bucket = "mahsuda-terraform-us-1"
    key    = "aws/ec2/ec2_state"
    region = "us-east-1"
  }
}