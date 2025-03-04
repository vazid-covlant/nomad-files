job "hello_pack" {
  type   = "service"
  [[ template "region" . ]]
  datacenters = [[ var "datacenters" . | toStringList ]]
  group "app" {
    count = [[ var "count" . ]]

    network {
      port "http" {
        static = 80
      }
    }

    [[/* this is a go template comment */]]

    task "server" {
      driver = "docker"
      config {
        image        = "mnomitch/hello_world_server"
        network_mode = "host"
        ports        = ["http"]
      }

      resources {
        cpu    = [[ var "resources.cpu" . ]]
        memory = [[ var "resources.memory" . ]]
      }
    }
  }
}
