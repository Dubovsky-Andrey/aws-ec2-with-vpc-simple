# Create a subnet for the VPC
resource "aws_subnet" "ec2_simple_vpc_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = var.subnet_name
  }
}