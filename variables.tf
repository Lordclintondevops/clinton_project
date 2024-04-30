variable "region" {
    type = string
    default = "us-east-1"
  
}

variable "ami" {
    type = string
    default = "ami-04b70fa74e45c3917"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "key_name" {
    type = string
    default = "clintontest"
  
}