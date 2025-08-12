resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "${var.env}-app"
  }
}

resource "aws_instance" "app" {
  ami           = var.ami
  instance_type = var.instance_type
}
