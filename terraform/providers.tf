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
AWS_ACCESS_KEY_ID: ${{ secrets.ACCESS_KEY}}
AWS_SECRET_ACCESS_KEY: ${{ secrets.SECRET.ACCESS_KEY}}
  default_tags {
    tags = {
      CreatedBy   = "gopi"
    }
  }
}
