provider "aws" {
  region = var.region_vn
}

# provider "aws" {
#   alias  = "vn"
#   region = var.region_vn
# }

## VN Instance
resource "aws_instance" "vn_instance" {
  ami           = var.ami_id_vn
  instance_type = var.instance_type
  key_name      = var.key_name_vn

  user_data = file("vn.sh")

  security_groups = [aws_security_group.allow_http.name]

  # provider = aws.vn

  tags = {
    Name = "VN EC2 instance"
  }
}

