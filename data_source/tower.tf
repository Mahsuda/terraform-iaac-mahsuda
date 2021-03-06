#Go to us-east-1 region
# Search for Centos Lest with the owner
data "aws_ami" "centos" {
     filter {
        name  = "root-device-type"
         values = ["ebs"]
    most_recent = true
    owners = ["679593333241"]
    }
     filter {
         name ="name"
         values = ["CentOS Linux 7 x86_64 HVM EBS *"]
         }
         }

# Show  AMI id


resource "aws_key_pair" "towerkey" {
  key_name   = "towerkey"
  public_key = file("~/.ssh/id_rsa")
}


resource "aws_instance" "tower" {
  ami           = "data.aws_ami.centos.id"
  instance_type = "t2.micro"


 provisioner "remote-exec" {
     connection {
          host = self.public_ip
          type = "ssh"
          user = "centos"
          private_key = file("~/.ssh/id_rsa")
          inline = [
              "sudo yum install -y epel-release",
              ]
              }
              }

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "tower" {
  zone_id = "Z180QC6O3SYROP"
  name    = "tower"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}