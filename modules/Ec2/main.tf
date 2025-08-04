resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "${lookup(var.instance_type, terraform.workspace, "t2.micro")}"

  tags = {
    Name = "${lookup(var.env, terraform.workspace, "dev")}-app"
  }
}