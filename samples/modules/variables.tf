variable "image_name" {
  description = "Name of the image"
  default = "ghost:latest"
}
variable "container_name" {
  description = "Name of the container"
  default = "Deivee-blog"
}
variable "ext_port" {
  description = "Internal port"
  default = 80
}
variable "int_port" {
  description = "External port"
  default = 1111
}

