terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.0"
      region  = "us-east-1"
    }
  }
}
