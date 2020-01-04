resource "aws_instance" "instance" {
    ami = var
    instance_type = var.instance_type
    key_name = var.key_name 

}