# --- main.tf/modules/aws/rds
resource "aws_security_group" "rds_sg" {
  name = "rds_sg"

  description = "RDS servers (terraform-managed)"
  vpc_id = var.vpc_id_rds

  # Only postgres in
  ingress {
    from_port = var.db_port
    to_port = var.db_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic.
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "db_subnet" {
  name       = "rds-subnet"
  subnet_ids = var.subnets_rds
  tags = {
    Name = "rds-db"
  }
}
resource "aws_db_instance" "rds-instance" {
  allocated_storage       = var.allocated_storage
  storage_type            = "gp2"
  engine                  = var.db_engine
  engine_version          = var.engine_version
  instance_class          = var.instance_type
  name                    = var.database_name
  username                = var.db_username
  password                = var.db_password
  skip_final_snapshot     = true
  db_subnet_group_name    = aws_db_subnet_group.db_subnet.name
  publicly_accessible     = var.publicly_accessible
  vpc_security_group_ids  = [
    aws_security_group.rds_sg.id]

  tags = {
    Name = "rds-database"
  }
}
