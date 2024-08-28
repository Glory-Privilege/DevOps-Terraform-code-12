terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.63.1"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami = data.aws_instance.ec21.ami
  instance_type = data.aws_instance.ec21.instance_type
  key_name = data.aws_instance.ec21.key_name
}
