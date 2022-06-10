variable "ec2_name" {
  description = "The Name of the EC2"
  type        = string
}

variable "ec2_security_group_name" {
  description = "The Name of the EC2 Security Group"
  type        = string
}

variable "ec2_security_group_description" {
  description = "The Description of the EC2 Security Group"
  type        = string
}

variable "ec2_ami" {
  description = "The Amazon Machine Image"
  type        = string
}

variable "ec2_instance_type" {
  description = "The EC2 Instance type"
  type        = string
}

variable "vpc_id_ec2" {
  description = "The ID of the VPC"
  type        = string
}

# variable "ec2_ssh_key_name" {
#   description = "The SSH Key Name"
#   type        = string
# }

# variable "ec2_ssh_public_key_path" {
#   description = "The local path to the SSH Public Key"
#   type        = string
# }

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "number_of_instances" {
  description = "Number of instances"
  type        = number
}