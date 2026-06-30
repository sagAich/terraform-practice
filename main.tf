provider "aws" {
  region  = "ap-south-1"
  profile = "terraform-lab"
}

resource "aws_instance" "example"{
  ami = "ami-01a00762f46d584a1" 
  instance_type = "t2.micro"
}