variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "keyname" {
    type  = string
    default = "aug2020"
}

variable "enable_security_grp" {
    type  = string
    default = true
}

variable "instance_count" {
    type = string
    default = "2"
}

variable "enable_ec2" {
    type = string
    default = false
}