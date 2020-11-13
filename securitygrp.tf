resource "aws_security_group" "websg" {
    count = var.enable_security_grp ? 1 : 0
    name = 
    description = "allows http traffic"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "websg"
    }
}

//<CONDITION> ? <TRUE_VAL> : <FALSE_VAL>
resource "aws_security_group" "sshsg" {
    count = var.enable_security_grp ? 1 : 0
    name = "sshsg"
    description = "allows ssh traffic"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "sshsg"
    }
}