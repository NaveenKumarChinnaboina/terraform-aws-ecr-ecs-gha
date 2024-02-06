resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  force_destroy = var.bucket_force_destroy
  tags = var.tags
  
}

resource "aws_s3_bucket_versioning" "aws_s3_bucket_versioning" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = var.versioning_status
  }
  
}

resource "aws_s3_bucket_acl" "aws_s3_bucket_acl" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = var.aws_s3_bucket_acl
  
}

resource "aws_s3_bucket_public_access_block" "aws_s3_bucket_public_access_block" {
  bucket = aws_s3_bucket.s3_bucket.id
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
  
}

resource "aws_s3_bucket_accelerate_configuration" "aws_s3_bucket_accelerate_configuration" {
  bucket = aws_s3_bucket.s3_bucket.id
  status = var.acceleration_status
  
}

