aws_region                  = "us-east-1"
ami                         = "ami-05f417c208be02d4d"
instance_type               = "t4g.nano"
allowed_cidrs               = ["0.0.0.0/0"]
instance_name               = "aws-ec2-simplee"
sg_name                     = "aws-ec2-simple-sg"
associate_public_ip_address = true
tags = {
  Environment = "dev"
  Project     = "aws-ec2-simple"
}
ingress_ports = [
  {
    port        = 22
    description = "Allow SSH"
    protocol    = "tcp"
  },
  {
    port        = 80
    description = "Allow HTTP"
    protocol    = "tcp"
  },
  {
    port        = 80
    description = "Allow HTTP"
    protocol    = "udp"
  }
]

egress_rules = [
  {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

# VPC module variables
vpc_cidr          = "10.0.0.0/16"
vpc_name          = "ec2-simple-vpc"
subnet_cidr       = "10.0.1.0/24"
availability_zone = "us-east-1a"
subnet_name       = "ec2-simple-subnet"
