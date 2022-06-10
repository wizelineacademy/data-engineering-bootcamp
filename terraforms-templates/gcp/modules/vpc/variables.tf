# --- variables.tf/gcp/modules/vpc

variable "project_id" {}
/*
variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
}
variable "cidr_range" {
  description = "CIDR range to create the subnets"
  type        = number
}*/
variable "private_subnet_name" {
  description = "Subnet name"
  type        = list(string)
  default     = [
    "private-0",
    "private-1",
    "private-2"]
}
variable "public_subnet_name" {
  description = "Subnet name"
  type        = list(string)
  default     = [
    "public-0",
    "public-1",
    "public-2"]
}

variable "private_subnets" {
  description = "Private Subnets IP addresses"
  type        = list(string)
  default     = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "Public Subnets IP addresses"
  type        = list(string)
  default     = [
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24"]
}