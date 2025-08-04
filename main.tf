provider "aws" {
  region = "ap-south-1"
}

variable "instance_type" {
  description = "Type of instance"
  type = string
}

variable "env" {
  description = "Type of env"
  type = string
}

variable "ami" {
  description = "image type"
  type = string
} 

module "ec2-instance" {
    source = "./modules/Ec2"
    ami = var.ami
    instance_type = var.instance_type
    env = var.env
}