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
<<<<<<< HEAD
  access_key = "AKIAXYKJQKV6SQEU6EV3"
  secret_key = "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"
=======
AWS_ACCESS_KEY_ID: ${{ secrets.ACCESS_KEY}}
AWS_SECRET_ACCESS_KEY: ${{ secrets.SECRET.ACCESS_KEY}}
>>>>>>> 9f497c2a1ea0024c7746fa053f86977c0937a4d2
  default_tags {
    tags = {
      CreatedBy   = "gopi"
    }
  }
}
