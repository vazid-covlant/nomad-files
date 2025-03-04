datacenter = "dc1"
node_name  = "host01"
bind_addr   = "172.31.95.63"
client_addr = "0.0.0.0"
recursors   = ["1.1.1.1", "1.1.0.0"]
addresses {
  dns = "172.31.95.63"
}
acl {
  enabled = true
  tokens {
    initial_management = "consul-root-token"
    agent              = "consul-root-token"
  }
}
ports {
  grpc = 8502
  dns  = 8600
}