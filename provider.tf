provider "aws" {
  region = "eu-north-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.92"
    }
  } 

  required_version = ">= 1.2"
}
