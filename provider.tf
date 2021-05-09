provider "aws" {
  region = var.region
}
terraform {

  backend "s3" {
    bucket     = "myqabucketforterraformtest"              #bucket name
    key        = "terraform-statefile" #giving file directory or folder name where to store state file.
    region     = "us-east-1"
    #dynamodb_table = "remote-lock-tc" name of the dynamodb which created.
  }
}

