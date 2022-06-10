# --- main.tf/gcp/modules/vpc ---

resource "google_compute_network" "main-vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "private_subnets" {
  count         = length(var.private_subnets)
  name          = "${var.private_subnet_name[count.index]}-private-subnet"

  ip_cidr_range = var.private_subnets[count.index]
  network       = google_compute_network.main-vpc.id
}

resource "google_compute_subnetwork" "public_subnets" {
  count         = length(var.public_subnets)
  name          = "${var.public_subnet_name[count.index]}-public-subnet"
  ip_cidr_range = var.public_subnets[count.index]
  network       = google_compute_network.main-vpc.id
}