variable "instance_type" {
  description = "Type of instance"
  type = string
}

variable "env" {
  description = "Type of env"
  type = map(string)

  default = {
    "dev" = "t2micro"
    "stage" = "t3micro"
    "prod" = "t2micro"
  }
}

variable "ami" {
  description = "image type"
  type = string
} 