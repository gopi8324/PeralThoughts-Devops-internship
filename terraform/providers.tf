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
  default_tags {
    tags = {
      CreatedBy   = "gopi"
    }
  }
}
