variable "project_id" {}

variable "cluster_name"{
  type = string
}
variable "location" {
  description = "location"
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "machine_type" {
  type = string
  default = "n1-standard-1"
}

