provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
key_name = "vishal"


  vpc_security_group_ids = ["sg-0e5d29266c98b2473"]

  
  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "CICD-nginx"
  }
}

output "instance_id" {
  value = aws_instance.my_instance.id
}

output "public_ip" {
  value = aws_instance.my_instance.public_ip
}