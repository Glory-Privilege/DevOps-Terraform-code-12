terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.1"
    }
  }
}

provider "aws" {

  region = "us-east-1"
}

/*
resource "aws_iam_group" "grp1" {
  name = "manager2024"
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_iam_user" "usr1" {
  name       = "glory2024"
  depends_on = [aws_iam_group.grp1]
}
*/

resource "aws_instance"  "server1" {
ami = "ami-02c21308fed24a8ab"
instance_type = "t3.small"
key_name = "wordpress"
lifecycle {
  create_before_destroy = true
}
}