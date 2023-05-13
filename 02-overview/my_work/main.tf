terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0ec7f9846da6b0f61" # Ubuntu 20.04 LTS @ eu-central-1
  instance_type = "t2.micro"
}
