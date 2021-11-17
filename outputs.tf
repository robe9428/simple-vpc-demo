output "vpc_id" {
  value = aws_vpc.tf_demo_vpc.id
}

output "public_subnet_id" {
  value = [aws_subnet.public-subnets.*.id]
}

output "private_subnet_id" {
  value = [aws_subnet.private-subnets.*.id]
}
