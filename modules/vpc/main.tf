# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ec2_simple_vpc.id
  tags = {
    Name = "${var.vpc_name}-igw"
  }
}

# Create a VPC
resource "aws_vpc" "ec2_simple_vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}

# Create a subnet for the VPC
resource "aws_subnet" "ec2_simple_vpc_subnet" {
  vpc_id            = aws_vpc.ec2_simple_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = var.subnet_name
  }
}
