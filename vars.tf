variable "aws_region" {
  type        = string
  description = "AWS Region the instance is launched in"
  default     = "us-east-1"
}

variable "key_name"{
    type        = string
    description = "The key which we are using to login ito ec2 instance"
    default = "bpxeukey"  
}

variable "ami" {
  type        = string
  description = "The AMI to use for the instance. By default it is the AMI provided by Amazon."
  default     = "ami-038f1ca1bd58a5790"
}