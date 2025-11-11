resource "aws_s3_bucket" "example" {
  bucket        = "sahish-s3-bucket"
  force_destroy = false

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# uploading objects in s3 buckets
resource "aws_s3_object" "object" {
  for_each = local.files_to_upload
  bucket   = aws_s3_bucket.example.id
  key      = each.key
  source   = "${path.module}/files/${each.value}"
  etag     = filemd5("${path.module}/files/${each.value}")
  # content_type = mime_type.objects[each.key].id 
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.example.id
  policy = data.aws_iam_policy_document.public_read_access.json
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  index_document {
    suffix = "index.html"
  }

}