provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  description = "image type"
  type = string
} 

module "ec2-instance" {
    source = "./modules/Ec2"
    ami = var.ami
}