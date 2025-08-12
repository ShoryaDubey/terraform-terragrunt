variable "instance_type" {
  description = "Type of instance"
  type = string
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