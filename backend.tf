terraform {
  backend "s3" {
    bucket = "project-tfstate-alina"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}