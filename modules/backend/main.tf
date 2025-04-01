provider "aws" {
  region = "us-west-1"
}

resource "aws_security_group" "leocella_nginx_sg" {
  name_prefix = "leocella-backend-sg"
  description = "Security Group for Backend EC2"