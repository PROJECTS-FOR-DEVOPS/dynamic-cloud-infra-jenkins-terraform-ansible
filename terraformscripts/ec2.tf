provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "ansible_key" {
  key_name   = "ec2-ansible-key"
  public_key = file("~/.ssh/ec2-ansible-key.pub")
}

resource "aws_instance" "ec2_ansible" {
  ami                         = "ami-07a6f770277670015"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.ansible_key.key_name
  vpc_security_group_ids      = ["sg-05f91f973d322868d"]

  tags = {
    Name = "terraformserver"
  }
}
