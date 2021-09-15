provider "google" {
     credentials = file("jsongcpdefault.json")
     project     = "centered-moon-320507"
     region      = "us-central1"
     zone        = "us-central1-a"
}
resource "google_compute_instance" "default" {
  name         = "test-ph-1509"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
} 
