# --- variables.tf/modules/aws/rds
variable "allocated_storage" {
  description = "Space in disk for the database, stay in the range 5-10 to stay in free tier"
  type = number
}
variable "db_engine" {
  description = "Database instance type"
  type = string
}
variable "db_port" {
  description = "Database port"
  type = number
}
variable "engine_version" {
  description = "Engine version"
  type = string
}
variable "instance_type" {
  description = "Type for the rds instance, set db.t3.micro to stay in the free tier"
  type = string
}
variable "database_name" {
  description = "Name for the rds database"
  type = string
}
variable "db_username" {
  description = "Username credentials for root user"
}
variable "db_password" {
  description = "Password credentials for root user"
}
variable "subnets_rds" {
  description = "Private subnet where the rds instance is going to be placed"
}
variable "publicly_accessible" {
  description = "Variable that set the instance to be accessible publicly"
}
variable "vpc_id_rds" {
  description = "VPC id"
}