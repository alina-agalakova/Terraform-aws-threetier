output "vpc_id" {
  value = aws_vpc.Project.id
}

output "subnet_id" {
  value = aws_subnet.public1.id
}

output "route_table_id" {
  value = aws_route_table.public_subnet_rt.id
}

output "allocation_id" {
  value = aws_eip.Projecteip.id
}

#example