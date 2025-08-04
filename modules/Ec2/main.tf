resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "${lookup(var.env, terrafrom.workspace, dev)}-app"
  }
}