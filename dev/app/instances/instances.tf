resource "aws_instance" "web" {
  ami           = "ami-04b9e92b5572fa0d1"
  instance_type = var.instance_type

  tags = {
    env = var.env
    group = var.group
  }
}