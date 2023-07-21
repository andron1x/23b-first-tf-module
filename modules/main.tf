resource "aws_instance" "my_instance" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    name = "terraform-module-instance-${count.index +1}"
  }
  vpc_security_group_ids = [aws_security_group.sg_80.id]
}

resource "aws_security_group" "sg_80" {
  name = var.sg_name
  description = var.sg_description
  vpc_id = var.vpc_id

  ingress {
    description = "http traffic over p 80"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
}