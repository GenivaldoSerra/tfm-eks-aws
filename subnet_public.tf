resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = "10.13.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Eks_subnet_1a"
  }
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = "10.13.2.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Eks_subnet_1b"
  }
}