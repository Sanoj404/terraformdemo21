resource "aws_instance" "engine1" {
    ami = var.ami
    instance_type = "t2.micro"
    # VPC
    subnet_id = aws_subnet.private_subnet.id
    # Security Group
    vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
    
    # the Public SSH key
    key_name = var.key_name
    tags = {
    Name = "engine1"
  }
}
resource "aws_eip" "lb1" {
  instance = aws_instance.engine1.id
  vpc      = true
}
resource "aws_instance" "engine2" {
    ami = var.ami
    instance_type = "t2.micro"
    # VPC
    subnet_id = aws_subnet.public_subnet.id
    # Security Group
    vpc_security_group_ids = [aws_security_group.ssh-notallowed.id]
    # the Public SSH key
    key_name = var.key_name
    tags = {
    Name = "engine2"
  }
}