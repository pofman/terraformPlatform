terraform {
	required_version = ">= 1.1.0"
	required_providers {
		aws = "4.8.0"
	}
	backend "s3" {
		region = "us-east-1"
	}
}
provider "aws" {
	region = "us-east-1"
}