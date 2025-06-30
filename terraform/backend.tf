terraform {
  backend "s3" {
    # S3 bucket for storing Terraform state
    bucket = "terra-file-bucket-ap"

    # Path to the state file inside the bucket
    key = "terraform.tfstate"

    # AWS region of the bucket and DynamoDB table
    region = "ap-south-1"

    # DynamoDB table for state locking
    dynamodb_table = "terraform-lock-table"

    # Encrypt the state file
    encrypt = true
  }
}
