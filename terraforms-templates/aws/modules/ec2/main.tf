resource "aws_instance" "ec2" {
  count                       = var.number_of_instances
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type

  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.ec2_security_group.id]
  associate_public_ip_address = true
  tags = {
    Name = "instance-${count.index}"
  }
}

resource "aws_security_group" "ec2_security_group" {
  name        = var.ec2_security_group_name
  description = var.ec2_security_group_description

  vpc_id      = var.vpc_id_ec2

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.ec2_security_group_name
  }
}