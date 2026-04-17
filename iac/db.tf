resource "docker_image" "postgres" {
  name = "postgres:16"
}

resource "docker_container" "db_localhost" {
  name  = "bd-localhost"
  image = docker_image.postgres.image_id

  env = [
    "POSTGRES_DB=appdb",
    "POSTGRES_USER=admin",
    "POSTGRES_PASSWORD=123456"
  ]

  ports {
    internal = 5432
    external = 4003
  }
}

resource "docker_container" "db_dev" {
  name  = "bd-dev"
  image = docker_image.postgres.image_id

  env = [
    "POSTGRES_DB=appdb",
    "POSTGRES_USER=admin",
    "POSTGRES_PASSWORD=123456"
  ]

  ports {
    internal = 5432
    external = 5003
  }
}