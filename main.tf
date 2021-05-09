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
resource "aws_instance" "web1" {
    ami = "ami-0d5eff06f840b45e9"
    instance_type = "t2.micro"
    key_name = "bpxeukey.pem"
    subnet_id = "subnet-04916f0beb56c06c5"
    vpc_security_group_ids = [ "sg-0c5fe5a21f7d4ad49" ]
    security_groups = [ "sg-0c5fe5a21f7d4ad49" ]
    tags = {
      "Name" = "Node3"
    }
}
