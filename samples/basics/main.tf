provider "google" {
  version = "3.5.0"

//  credentials = file("ctrl-space-projects-4a337ba3d8b5.json")
  project = "ctrl-space-projects"
  region = "us-central1"
  zone = "us-central1-c"

}

resource "google_compute_instance" "appserver" {
  name = "test-app-server"


  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "ctrl-space-dev"
  }
}
