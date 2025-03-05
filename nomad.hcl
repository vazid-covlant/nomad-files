server {
  enabled = true
  bootstrap_expect = 1
}

client {
  enabled = true
}

ui {
  enabled = true
}

addresses {
  http = "0.0.0.0" 
  rpc  = "0.0.0.0"
  serf = "0.0.0.0"
}
