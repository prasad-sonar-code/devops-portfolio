terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_first_bucket" {
  bucket = "prasad-devops-portfolio-2024"

  tags = {
    Name        = "My First Terraform Bucket"
    Environment = "Dev"
    Project     = "DevOps Portfolio"
  }
}