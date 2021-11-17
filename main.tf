resource "aws_vpc" "tf_demo_vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "private-subnets" {
  vpc_id     = aws_vpc.tf_demo_vpc.id
  count      = length(var.azs)
  cidr_block = element(var.private-subnets , count.index)
  availability_zone = element(var.azs , count.index)

  tags = {
    Name = "private-subnet-${count.index+1}"
  }
}

resource "aws_subnet" "public-subnets" {
  vpc_id     = aws_vpc.tf_demo_vpc.id
  count      = length(var.azs)
  cidr_block = element(var.public-subnets , count.index)
  availability_zone = element(var.azs , count.index)

  tags = {
    Name = "public-subnet-${count.index+1}"
  }
}
