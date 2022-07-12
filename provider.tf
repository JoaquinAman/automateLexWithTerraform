terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.22.0"
    }
  }
}

variable "aws_region" {
  default = "us-west-2"
}

#  variable "aws_profile" {

#  }

provider "aws" {
  region  = var.aws_region
#   profile = var.aws_profile
}
