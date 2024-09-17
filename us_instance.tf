resource "aws_instance" "us_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("userdata/us.sh")

  security_groups = [aws_security_group.allow_http.name]

  tags = {
    Name = "US EC2 instance"
  }
}
