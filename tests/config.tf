terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.35"
    }
    datadog = {
      source  = "DataDog/datadog"
      version = "~> 2.26.1"
    }
  }
}

provider "aws" {
  region  = "eu-west-1"
}
provider "datadog" {
  api_key = "test"
  app_key = "test"
}
