provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "AWSEC2Instance"{
   ami = "ami-0a9a48ce4458e384e"
   instance_type = "t2.micro"
   key_name = "ansible"
   vpc_security_group_ids = ["sg-08f9c03bc09f025d9"]
   tags={
   Name = "terraformserver"
   }
}
