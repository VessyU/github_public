terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

#plan - execute
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-vessyu-123456-01"
    versioning {
        enabled = true
    }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated"
}

#STATE
#DESIRED - KNOWN - ACTUAL

output "my_iam_user_complete_details" {
    value = aws_s3_bucket.my_s3_bucket
}
output "my_s3_bucket_complete_details" {
    value = aws_s3_bucket.my_s3_bucket.versioning[0].enabled
}
output "my_s3_bucket_complete_details" {
    value = aws_iam_user.my_iam_user
}