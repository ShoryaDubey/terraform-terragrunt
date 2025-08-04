variable "instance_type" {
  description = "Type of instance"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.micro"
    "prod" = "t2.micro"
  }
}

variable "env" {
  description = "Type of env"
  type = map(string)

  default = {
    "dev" = "dev"
    "stage" = "stage"
    "prod" = "prod"
  }
}

variable "ami" {
  description = "image type"
  type = string
} 