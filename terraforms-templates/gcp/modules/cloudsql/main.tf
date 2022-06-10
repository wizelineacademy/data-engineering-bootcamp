resource "google_sql_database_instance" "sql_instance" {
  name              = var.instance_name
  database_version  = var.database_version
  region            = var.region

  settings {
    tier      = var.instance_tier
    disk_size = var.disk_space

    location_preference {
      zone = var.location
    }

    ip_configuration {
      authorized_networks {
        value           = "0.0.0.0/0"
        name            = "test-cluster"
      }
    }
  }

  deletion_protection = "false"
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.sql_instance.name
}

resource "google_sql_user" "users" {
  name     = var.db_username
  instance = google_sql_database_instance.sql_instance.name
  host     = "*"
  password = var.db_password
}