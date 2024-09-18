provider "aws" {
  region = var.region_us
}

provider "aws" {
  alias  = "vn"
  region = var.region_vn
}

## VN Instance
resource "aws_instance" "vn_instance" {
  ami           = var.ami_id_vn
  instance_type = var.instance_type
  key_name      = var.key_name_vn

  user_data = file("userdata/vn.sh")

  security_groups = [aws_security_group.allow_http.name]

  provider = aws.vn

  tags = {
    Name = "VN EC2 instance"
  }
}


## US instance
resource "aws_instance" "us_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name_us

  user_data = file("userdata/us.sh")

  security_groups = [aws_security_group.allow_http.name]

  tags = {
    Name = "US EC2 instance"
  }
}

