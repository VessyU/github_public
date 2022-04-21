terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}

#for labelling what part of the process it refers to
variable "environment" {
  default = "dev"
}

variable "iam_user_name_prefix" {
  type    = string #any, number, bool, list, map, set, object, tuple
  default = "my_iam_user"
}

resource "aws_iam_user" "my_iam_user" {
  count = 1
  name  = "${var.environment}_${var.iam_user_name_prefix}_${count.index}"
}
