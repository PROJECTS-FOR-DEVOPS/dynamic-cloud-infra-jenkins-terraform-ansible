provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "AWSEC2Instance"{
   ami = "ami-07a6f770277670015"
   instance_type = "t2.micro"
   key_name = "ansible"
   vpc_security_group_ids = ["sg-05f91f973d322868d"]
   tags={
   Name = "terraformserver"
   }
}
