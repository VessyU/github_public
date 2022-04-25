terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}

variable "application_name" {
  default = "07-backend-state"
}

variable "project_name" {
  default = "users"
}

variable "environment_name" {
  default = "dev"
}

terraform {
  backend "s3" {
    bucket         = "dev-applications-backend-state-vessyu"
    #key            = "07-backend-state-users-dev" # "app-env-prj"
    key = "dev/07-backend-state/users/backend-state"
    region         = "eu-west-1"
    dynamodb_table = "dev_application_locks"
    encrypt        = true
  }
}

resource "aws_iam_user" "my_iam_user" {
  name = "my_iam_user_abc"
}


