resource "aws_vpc" "leocella_vpc" {
  cidr_block = "172.200.100.0/16"
  tags = {
    Name = "leocella-vpc"
  }
}

resource "aws_subnet" "subnet_priv01" {
  vpc_id = aws_vpc.leocella_vpc.id
  cidr_block = "172.200.101.0/24"
  availability_zone = "us-west-1c"
  tags = {
    Name = "leocella-subnet_priv01"
  }
}
resource "aws_subnet" "subnet_priv02" {
  vpc_id = aws_vpc.leocella_vpc.id
  cidr_block = "172.200.102.0/24"
  availability_zone = "us-west-1b"
  tags = {
    Name = "dart-subnet_priv02"
  }
}
resource "aws_subnet" "subnet_pub01" {
  vpc_id = aws_vpc.leocella_vpc.id
  cidr_block = "172.200.103.0/24"
  availability_zone = "us-west-1c"
  tags = {
    Name = "leocella-subnet_pub01"
  }
}
resource "aws_subnet" "subnet_pub02" {
  vpc_id = aws_vpc.leocella_vpc.id
  cidr_block = "172.200.104.0/24"
  availability_zone = "us-west-1b"
  tags = {
    Name = "leocella-subnet_pub02"
  }
}

