terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "prod/terraform.state"
    bucket         = "auggie-jenkins-backend-bucket"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}
