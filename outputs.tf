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

output "instance_public_ip" {
  value = aws_instance.wordpress.public_ip
}

output "aws_alb_dns_name" {
  value = aws_alb.application-lb.dns_name
}

output "file_system_id" {
  value = aws_efs_file_system.project_efs.id
}

