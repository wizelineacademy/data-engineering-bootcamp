output "worker_security_group_id" {
  description = "Security group ID attached to the EKS workers"
  value       = module.eks.worker_security_group_id
}

output "efs" {
  value = aws_efs_file_system.efs_provisioner.dns_name
}