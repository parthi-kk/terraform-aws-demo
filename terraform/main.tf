terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.4.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-learn" {
  bucket        = "terra-mirshi-0406"
  force_destroy = true
}
