output "public_subnet" {
  value = google_compute_subnetwork.public_subnets.*.id
}

output "private_subnets" {
  value = google_compute_subnetwork.private_subnets.*.id
}

output "vpc" {
  value = google_compute_network.main-vpc.id
}