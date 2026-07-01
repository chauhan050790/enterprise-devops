terraform {
  backend "s3" {
    bucket = "vipin-terraform-state-demo"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt = true
  }
}