job "hello_pack" {
  type   = "service"
  [[ template "region" . ]]
  datacenters = [[ var "datacenters" . | toStringList ]]
  group "app" {
    count = [[ var "app_count" . ]]

    network {
      port "http" {
        to = 80
      }
    }

    [[/* this is a go template comment */]]

    task "server" {
      driver = "docker"
      config {
        image        = "mnomitch/hello_world_server"
        ports        = ["http"]
      }

      resources {
        cpu    = [[ var "resources.cpu" . ]]
        memory = [[ var "resources.memory" . ]]
      }
    }
  }
}
