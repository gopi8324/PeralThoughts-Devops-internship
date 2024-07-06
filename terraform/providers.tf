terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
  access_key = "AKIAXYKJQKV6SQEU6EV3"
  secret_key = "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"

  default_tags {
    tags = {
      CreatedBy   = "gopi"
    }
  }
}
