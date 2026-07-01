resource "aws_s3_bucket" "terraform_state" {
  bucket = "vipin-terraform-state-demo"
  tags = {
    Name        = "vipin-terraform-state-demo"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}