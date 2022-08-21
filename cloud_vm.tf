resource "google_compute_instance" "vm_instance" {
  depends_on = [
    google_compute_subnetwork.subnet
  ]
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "centos-7-v20220719"
    }
  }
  
 metadata_startup_script = file("start.sh")

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.name
    access_config {
    }
  }
  tags = ["server-ssh"]
}