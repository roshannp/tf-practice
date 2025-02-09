terraform {

  backend "s3" {
    bucket         = "my-terraform-state-bucket-roe"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "test_server" {
  ami           = "ami-088b41ffb0933423f"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}


