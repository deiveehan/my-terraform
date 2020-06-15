provider "google" {
  version = "3.5.0"

  project = "ctrl-space-projects"
  region = "us-central1"
  zone = "us-central1-a"
}

terraform {
  backend "gcs" {
    bucket = "ctrlspace-tf-bucket"
    prefix = "tf-state"
  }
}

// Ensure you enable Cloud resource manager ,cloud storage and compute engine api enabled in GCP.

resource "google_compute_network" "ctrl-space-dev" {
  name = "ctrl-space-dev"
  description = "VPC for holding ctrl-space applications for the development environment"
}

resource "google_compute_instance" "vm_instance" {
  name = "cs-jumpbox"
  metadata_startup_script = file("startups.sh")

  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.ctrl-space-dev.name
    access_config {
    }
  }
}

resource "google_compute_address" "vm_static_ip" {
  name = "jumpbox-static-ip"
}
