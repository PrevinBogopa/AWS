terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 6.0"
      }
    }

}

provider "aws" {
    region = "us-east-1"
}


resource "aws_s3_bucket" "first_bucket"  {
bucket= "tech-tutorials-testing-bucket-12345"

tags={
    Name = "My bucket"
    Environment= "Dev"
}
}