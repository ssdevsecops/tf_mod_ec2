provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "webapp" {
  count         = var.enable_ec2 ? var.instance_count : 0 
  instance_type = var.instance_type
  ami           = data.aws_ami.amazonlx.id
  key_name      = var.keyname
//  vpc_security_group_ids = [aws_security_group.websg.id , aws_security_group.sshsg.id]
  user_data  = <<-EOF
         #!/bin/bash
          sudo yum -y install httpd
          sudo systemctl start httpd
          sudo systemctl enable httpd
          sudo echo "welcome to deveops" > /var/www/html/index.html
          EOF

  tags = {
    Name        = "webappdev0${count.index}"
    environment = "develop"
    timetolive  = "10"
    backup      = "yes"
  }
}

