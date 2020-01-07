module "bucket1" {

  source = "./module"

  bucketname = "some-made-up-bucket-farrukh"

}
resource "aws_s3_bucket" "b" {

  bucket = var.bucketname

}