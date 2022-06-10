resource "aws_s3_bucket" "bucket" {
  bucket_prefix = var.bucket_prefix

  versioning {
    enabled = var.versioning
  }

  tags = {
    Name = "s3-data-bootcamp"
  }
}