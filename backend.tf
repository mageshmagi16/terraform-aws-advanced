terraform {
  backend "s3" {
    bucket = "mahesh-terraform-state-bucket-12345"
    key    = "advanced/state.tfstate"
    region = "ap-south-1"
  }
}