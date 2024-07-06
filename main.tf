resource "aws_s3_bucket" "my bucket" {
  bucket = "sctp-ce6-ben-saturday"
}

resource "aws_s3_bucket_public_access_block" "allow public" {
  bucket = sctp-ce6-ben-saturday.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
resource "aws_s3_bucket_website_configuration" "website config" {
  bucket = sctp-ce6-ben-saturday.website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
