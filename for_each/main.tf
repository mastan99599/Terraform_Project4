#By using for_each Create different tags names&owner
provider "aws" {
  region     = "ap-south-1"
  }

resource "aws_instance" "test_instance" {
  for_each = var.shaik_loop
  ami      = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  
tags ={
    name =each.value,
    owner=each.key
  }
}


#By using for_each create dynamic instance
resource "aws_instance" "test_instance2" {
  
  for_each       = var.shaik_loop2
  ami            = each.value.ami
  instance_type  = each.value.ins_type

tags ={
    name =each.value.name,
    owner=each.key
  }
}

