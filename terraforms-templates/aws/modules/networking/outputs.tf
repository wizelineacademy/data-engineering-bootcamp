output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_cidr_block" {
  value = var.vpc_cidr
}

output "public_subnets_route_table_id" {
  value = aws_route_table.public.id
}

output "public_subnets_ids" {
  value = aws_subnet.public_subnet.id
}

output "private_subnets_route_table_id" {
  value = aws_route_table.private.id
}

output "private_subnets_ids" {
  value = aws_subnet.private_subnet.*.id
}

output "nat_gw_ids" {
  value = aws_nat_gateway.nat.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "availability_zone" {
  value = var.availability_zone
}