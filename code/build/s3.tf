provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "7caac4e4-bc5d-4d35-88b5-d2928322df61"
    git_commit           = "82e00d85babd2a296010b6fc171b294eff3608ec"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:27:40"
    git_last_modified_by = "devin.malmad@gmail.com"
    git_modifiers        = "devin.malmad"
    git_org              = "DMALMAD"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
