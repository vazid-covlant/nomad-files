job "website"{
    datacenters = ["dc1"]
    type = "service"
    group "web"{
        count = 1
        network {
            port "http"{
                static = 8082
            }
        }
        task "website"{
            driver = "docker"
            config {
                image = "vazidcovlant/dockerdemo:latest"
                ports = ["http"]
            }
            resources {
                cpu = 120
                memory = 50
            }
        }
    }
}