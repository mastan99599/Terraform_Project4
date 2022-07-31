# #By using count 
provider "aws" {
  region     = "ap-south-1"
  }

resource "aws_instance" "web" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  count=2

  tags = {
    name="Demo-instance-terraform-shaik"
    owner="shaik"
  }
}



# #By using count create 3 different tags names & owner name using index
resource "aws_instance" "web2" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  count=3

  tags = {
    name="Demo-shaik${count.index}",
    owner="shaik_count${count.index}"
  }
}



# #Passing the tag name terrafrom.tfvars
resource "aws_instance" "web3" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  count=4

tags ={
    name = var.shaik_instance[count.index],
    owner="shaik_MN"
  }
}



# #By using length create dynamic tags names
resource "aws_instance" "web4" {
  count=length(var.shaik_name)
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
 
tags ={
    name = var.shaik_name[count.index],
    owner="shaik_123"
  }
}


# #By using count launch different ami
resource "aws_instance" "web5" {
  count         =length(var.shaik_name)
  ami           = var.ami[count.index]
  instance_type = "t2.micro"
  
tags ={
    name = var.shaik_name[count.index],
    owner="shaik99"
  }
}




