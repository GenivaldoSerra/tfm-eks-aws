resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.vpc_eks.id

  tags = merge(
    {
      Name = "${var.project_name}-igw"
    },
    var.tags
  )
}

resource "aws_route_table" "eks_public_rt" {
  vpc_id = aws_vpc.vpc_eks.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_igw.id
  }

  tags = merge(
    {
      Name = "${var.project_name}-pub-rt"
    },
    var.tags
  )
}