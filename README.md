# tf_project
# Deploy a three tier architure in AWS using Terraform
# What is Terraform?
HashiCorp Terraform is an infrastructure as code (IaC) software tool that allows DevOps teams to automate infrastructure provisioning using reusable, shareable, human-readable configuration files. The tool can automate infrastructure provisioning in both on-premises and cloud environments.
In this module we will deploy a three-tier application in AWS using Terraform.
## Prerequisites:
AWS account
AWS Access & Secret Key
### Below Resources from https://registry.terraform.io/ :
```
provider “aws”
resource “aws_vpc”
resource “aws_subnet”
resource “aws_internet_gateway”
resource “aws_route_table”
resource “aws_route_table_association”
resource “aws_route_table_association”
resource “aws_route_table_association”
resource “aws_eip”
resource “aws_nat_gateway”
resource “aws_route_table”
resource “aws_route_table_association”
resource “aws_security_group”
resource “aws_key_pair”
resource “aws_instance”
resource “aws_lb”
resource “aws_lb_target_group”
resource “aws_lb_listener”
resource “aws_lb_target_group_attachment”
resource “aws_efs_file_system”
resource “aws_efs_mount_target”
resource “aws_db_subnet_group”
resource “aws_security_group”
resource “aws_rds_cluster”
resource “aws_rds_cluster_instance”
```
Create file for variable
Create file for user data
# Verify the resources
Terraform will create below resources
VPC
Application Load Balancer
3 Public &  3 Private Subnets
EC2 instances
RDS instance
Route Table
Internet Gateway
Security Groups for Web & RDS instances
Route Table