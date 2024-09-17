resource "aws_instance" "vn_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("userdata/vn.sh")

  security_groups = [aws_security_group.allow_http.name]

  provider = aws.vn

  tags = {
    Name = "VN EC2 instance"
  }
}
