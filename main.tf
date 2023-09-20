resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  #   instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = var.tags
}

resource "aws_subnet" "Ventura-Prod-NAT-ALB-subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr[0]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "Ventura-Prod-NAT-ALB-subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-ALB-subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr[1]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-ALB-subnet-2" }
}

resource "aws_subnet" "Ventura-Prod-Web-subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[0]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "Ventura-Prod-Web-subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-Web-subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[1]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-Web-subnet-2" }
}

resource "aws_subnet" "Ventura-Prod-App-subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[2]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "Ventura-Prod-App-subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-App-subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[3]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-App-subnet-2" }
}

resource "aws_subnet" "Ventura-Prod-DB-subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[4]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "Ventura-Prod-DB-subnet-1" }
}

resource "aws_subnet" "Ventura-Prod-DB-subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[5]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "Ventura-Prod-DB-subnet-2" }
}