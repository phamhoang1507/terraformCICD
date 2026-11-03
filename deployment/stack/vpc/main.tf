resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpctest-${var.stage}"
  }
}


resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/18"
   availability_zone = var.availability_zones_a
    tags = {
        Name = "public-subnet-${var.stage}-a"
    }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.64.0/18"
  availability_zone = var.availability_zones_b
    tags = {
        Name = "public-subnet-${var.stage}-b"
    }
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.128.0/18"
   availability_zone = var.availability_zones_a
    tags = {
        Name = "private-subnet-${var.stage}-a"
    }
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.192.0/18"
  availability_zone = var.availability_zones_b
    tags = {
        Name = "private-subnet-${var.stage}-b"
    }
}