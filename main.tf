resource "aws_instance" "web" {
  ami           = "ami-0f409bae3775dc8e5"
  instance_type = "t3.micro"
  tags = {
    Name = "hello-world"
  }
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.14.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  profile = "staging"
}
 





