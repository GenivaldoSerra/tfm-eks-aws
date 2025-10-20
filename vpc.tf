resource "aws_vpc" "vpc_eks" {
  cidr_block           = "10.13.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    {
      Name = "${var.project_name}-eks"
    },
    local.tags
  )
}
