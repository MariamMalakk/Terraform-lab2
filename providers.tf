provider "aws" {
  region                   = var.vpc-region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "default"

}