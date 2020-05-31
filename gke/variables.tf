variable "name" {
  default = "test-cluster"
}

variable "project" {
  default = "ctrl-space-projects"
}

variable "location" {
  default = "us-central1"
}

variable "initial_node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "network" {
  default = "ctrl-space-dev"
}
