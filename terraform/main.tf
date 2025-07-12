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

variable "bucket_names" {
  description = "List of S3 bucket names"
  type        = list(string)
  default     = ["rockstar-mirshi", "homestar-dhivi"]
}

resource "aws_s3_bucket" "buckets" {
  for_each      = toset(var.bucket_names)
  bucket        = each.value
  force_destroy = true
}
