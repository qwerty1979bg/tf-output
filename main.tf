resource "random_shuffle" "choice" {
  input        = ["AWS", "AZURE", "DigitalOcean", "Packet.NET", "Joyent Cloud", "Alibaba Cloud"]
  result_count = 1
}

output "provider" {
  value = ["${random_shuffle.choice.result}"]
}
