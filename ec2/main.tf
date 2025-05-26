terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"   # specify appropriate version
    }
  }
}
provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c1ac8a41498c1a9c"   
  instance_type = "t3.micro"                

  tags = {
    Name = "MyBasicEC2Instance"
  }
}
