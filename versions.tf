terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "my-deploy-serverless-code"
    key    = "terraform/instances/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

locals {
  region = var.region
}