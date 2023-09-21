terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = "ap-northeast-1"
    access_key = ""
    secret_key = ""
}
resource "aws_instance" "exam" {
    ami = ""
    instance_type = "t2.micro"
}
output "public_ip"{
    value = aws_instance.exam.public_ip
}
