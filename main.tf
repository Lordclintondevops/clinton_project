# Configuring AWS Provider
provider "aws" {
    region = var.region
  
}

# Creating an EC2 Instance
resource "aws_instance" "demo" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name


    tags = {
      name = "demo"
    }
  
}

# data "aws_ami" "ubuntu" {
#     most_recent = true
    

#     filter {
#       name = "ubuntu"
#       values = "ubuntu-noble-24.04-amd64-server-20240423"
#     }
# }

# Creating a Golden AMI image
resource "aws_ami_from_instance" "golden_image" {
    name = "golden_image1"
    source_instance_id = aws_instance.demo.id

    tags = {
      name = "golden_image1"
    }
  
}