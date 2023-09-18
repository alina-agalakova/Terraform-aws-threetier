variable "region" {
  description = "please provide a region information"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "please provide a cidr_block information"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet1" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet2" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_subnet3" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet1" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.101.0/24"
}

variable "private_subnet2" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.102.0/24"
}

variable "private_subnet3" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.103.0/24"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "sec_group_name" {
  description = "please provide a sec_group_name information"
  type        = string
  default     = "my_sg"
}