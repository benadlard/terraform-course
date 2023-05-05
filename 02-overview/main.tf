terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0b90a0a00b659a2f2" # Ubuntu 20.04 LTS // eu-west-2
  instance_type = "t2.micro"
}
