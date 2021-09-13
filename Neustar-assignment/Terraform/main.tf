terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Mymachine" {
  count = 3
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name = "key01"
  
}