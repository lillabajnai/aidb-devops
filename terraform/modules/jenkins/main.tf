# modules/jenkins/main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

resource "docker_image" "jenkins" {
  name = "jenkins/jenkins:lts"
}

resource "docker_container" "jenkins" {
  name  = "${var.project_name}-jenkins"
  image = docker_image.jenkins.image_id

  ports {
    internal = 8080
    external = 8080
  }

  networks_advanced {
    name = "${var.project_name}-network"
    ipv4_address = "172.100.0.60"
  }

  volumes {
    volume_name    = docker_volume.jenkins_home.name
    container_path = "/var/jenkins_home"
  }

  restart = "always"
}

resource "docker_volume" "jenkins_home" {
  name = "jenkins_home"
}

output "container_name" {
  value = var.container_name
}
