terraform {
  required_version = "1.2.3"
  required_providers {
    aws = {
       source = "hashicorp/aws"
       version = "4.19.0" 
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQHMHDSJLTOKBOHYJ"
  secret_key = "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"
}

