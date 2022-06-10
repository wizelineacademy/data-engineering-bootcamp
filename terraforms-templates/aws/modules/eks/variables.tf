variable "cluster_name" {
  description = "The name of the Airflow cluster (e.g. airflow-xyz). This variable is used to namespace all resources created by this module."
  type        = string
}

variable "cluster_version" {
  description = "Cluster version"
}

variable "vpc_id_eks" {
  type = string
  description = "VPC where the cluster and workers will be deployed."
}

variable "subnet" {
  type = list(string)
  description = "The private subnets to place the EKS cluster and workers within."
}

variable "instance_type_group1" {
  description = "Instance type for the group 1"
}

variable "instance_type_group2" {
  description = "Instance type for the group 2"
}

variable "asg_desired_capacity_group1" {
  description = "Desired capacity for autoscaling for the group 1"
}

variable "asg_desired_capacity_group2" {
  description = "Desired capacity for autoscaling for the group 2"
}
