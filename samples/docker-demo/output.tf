output "container_name" {
  value = docker_container.nginx.name
}
output "gatway" {
value = docker_container.nginx.gateway
}

output "port_number_external" {
  value = docker_container.nginx.ports[0].external
}
