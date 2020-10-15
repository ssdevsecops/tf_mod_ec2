provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "webapp" {
  instance_type = var.instance_type
  ami           = data.aws_ami.amazonlx.id
  key_name      = var.keyname
  vpc_security_group_ids = [aws_security_group.websg.id]
  tags = {
    Name        = "webapp01"
    environment = "dev"
    timetolive  = "10"
    backup      = "yes"
  }
}

