resource "aws_efs_file_system" "efs_provisioner" {

}

resource "aws_efs_mount_target" "efs_provisioner" {
  count           = length(var.subnet)
  file_system_id  = aws_efs_file_system.efs_provisioner.id
  subnet_id       = element(var.subnet, count.index)
  security_groups = [aws_security_group.ingress_efs.id]
}

resource "aws_security_group" "ingress_efs" {
  name        = "ingress-${aws_efs_file_system.efs_provisioner.creation_token}-sg"
  description = "Allow NFS traffic."
  vpc_id      = var.vpc_id_eks
  
  // NFS
  ingress {
    from_port = 2049
    to_port   = 2049
    protocol  = "tcp"

    security_groups = [aws_security_group.worker_group_mgmt_one.id, aws_security_group.worker_group_mgmt_two.id,aws_security_group.all_worker_mgmt.id]
  }

  // Terraform removes the default rule
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.worker_group_mgmt_one.id, aws_security_group.worker_group_mgmt_two.id,aws_security_group.all_worker_mgmt.id]
  }

}