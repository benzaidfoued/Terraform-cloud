resource "docker_container" "loadbalancer" {
  name  = "tia-loadbalancer"
  image = "swinkler/tia-loadbalancer"
  env = [
    "ADDRESSES=${join(" ", var.addresses)}"
  ]
  ports {
    internal = 80
    external = 5000
  }
}
