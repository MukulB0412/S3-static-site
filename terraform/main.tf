resource "aws_s3_bucket" "website_bucket" {
  bucket         = "mukul-site-hosting-001"
  force_destroy  = true

  tags = {
    Name        = "WebsiteBucket"
    Environment = "Dev"
  }
}
