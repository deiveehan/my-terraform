

resource "google_container_cluster" "default" {
  name = "${var.name}"
  project = "{var.project}"
  description = "Test GKE cluster"
  location = "$(var.location}"

  remove_default_node_pool = true

  initial_node_count = "${var.initial_node_count}"

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}


resource "google_container_node_pool" "ctrl-space-dev" {
  name = "${var.name}-node-pool"
  cluster = "${google_container_cluster.default.name}"
  project = "${var.project}"
  location = "${var.location}"
  node_count= 1

  node_config {
    preemptible = false
    machine_type = "${var.machine_type}"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis/auth/monitoring"
    ]
  }
}