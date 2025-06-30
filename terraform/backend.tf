terraform {
  backend "s3" {
    bucket         = "terra-file-bucket-ap"      # Your actual S3 bucket name
    key            = "terraform.tfstate"         # Path to the state file in the bucket
    region         = "ap-south-1"                # Your AWS region
    dynamodb_table = "terraform-lock-table"      # DynamoDB table for state locking
    encrypt        = true
  }
}
