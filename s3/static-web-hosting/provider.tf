terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.20.0"
    }
    # mime = {
    #   # ENSURE this source is exactly "hashicorp/mime"
    #   source  = "hashicorp/mime" 
    #   version = "~> 3.2" 
    # }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}