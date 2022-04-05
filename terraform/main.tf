provider "aws" {
  region = "us-east-1"
}

variable "name" {
  description = "Name the instance on deploy"
}

resource "aws_instance" "uts01-jenkins" {
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name = "uts.pem"

  tags = {
    name = "${var.name}"
  }
  
}