resource "aws_instance" "web-2" {
  ami           = "ami-0f409bae3775dc8e5"
  instance_type = "t2.micro"
  tags = {
    Name = "hello-world-2"
  }
}

resource "aws_instance" "web-1" {
  ami           = "ami-0f409bae3775dc8e5"
  instance_type = "t2.micro"
  tags = {
    Name = "hello-world-1"
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
  region     = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_REGION" {}

variable "AWS_ACCESS_KEY_ID" {}

variable "AWS_SECRET_ACCESS_KEY" {}
 





