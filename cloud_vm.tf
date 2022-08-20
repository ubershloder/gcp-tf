resource "google_compute_instance" "vm_instance" {
  depends_on = [
    google_compute_subnetwork.subnet
  ]
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.name
    access_config {
    }
  }
}