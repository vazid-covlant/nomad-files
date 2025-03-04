job "httpd" {
  group "httpd" {
    network {
      port "http" {}
    }
    task "httpd" {
      driver = "docker"

      config {
        image   = "busybox:1.36"
        command = "httpd"
        args    = ["-f", "-p", "${NOMAD_PORT_http}"]
        ports   = ["http"]
      }
      resources {
                cpu = 80
                memory = 20
            }
    }
  }
}