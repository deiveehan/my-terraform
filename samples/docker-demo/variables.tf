variable "env" {
  description = "env: dev or prod"
}

variable "port_number" {
  type = map(number)
  default = {
    dev = 8081
    prod = 80
  }
}
