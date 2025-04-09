output "vpc_name" {
  value = var.vpc_name
}

output "vpc_id" {
  value = aws_vpc.default.id
}

output "environment" {
  value = var.environment
}

output "public-subnet" {
  value = aws_subnet.public-subnets.*.id
}

output "private-subnets" {
  value = aws_subnet.private-subnets.*.id
}