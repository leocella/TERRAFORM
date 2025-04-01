provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "leocella_nginx_sg" {
  name_prefix = "leocella-backend-sg"
  description = "Security Group for Backend EC2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "backend" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id.subnet_priv01.id
  security_groups        = [aws_security_group.leocella_nginx_sg.id]
  key_name               = var.key_pair_name

  tags = {
    Name = "leocella-backend-instance"
  }
}