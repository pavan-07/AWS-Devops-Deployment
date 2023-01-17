provider "aws" {
    region = "us-east-1"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "devops01_jenkins" {
    ami = "ami-06878d265978313ca"
    instance_type = "t2.micro"
    key_name = "devops01"

    tags = {
        Name = "${var.name}"
    }
}
