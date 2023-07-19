terraform {
  backend "s3" {
    bucket = "terraformsahuji"
    key    = "04-resources/terraform.tfstate"
    region = "us-east-1"
  }
}