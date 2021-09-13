terraform {
  backend "s3" {
    bucket = "onekloud-swagwatch.io-management-infra"
    key    = "management/management-us-east-1-compute-terraform.tfstate"
    region = "us-east-1"
  }
}
