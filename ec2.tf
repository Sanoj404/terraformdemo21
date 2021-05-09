resource "aws_instance" "engine1" {
    ami = var.ami
    instance_type = "t2.micro"
    # VPC
    # subnet_id = aws_subnet.private_subnet.id
    # Security Group
    #vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
    
    # the Public SSH key
    key_name = var.key_name
    tags = {
    Name = "engine1"
  }
}
