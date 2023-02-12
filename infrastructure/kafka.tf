resource "fly_volume" "kafka" {
  name   = "kafka_data"
  app    = fly_app.kafka.name
  size   = 1
  region = "lhr"
}

resource "fly_ip" "kafka-ip" {
  app  = fly_app.kafka.name
  type = "v6"
}