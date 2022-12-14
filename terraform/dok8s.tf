resource "digitalocean_kubernetes_cluster" "hexlet-basics-4" {
  version = "1.20.9-do.0"

  name = "hexlet-basics-4"
  region = "fra1"

  auto_upgrade = true

  node_pool {
    name       = "hexlet-basics-node-pool-4"
    size       = "c-2"
    node_count = 3
  }
}
