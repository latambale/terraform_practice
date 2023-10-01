output "public_ip" {
  value = aws_instance.ubuntu[1].public_ip
}
output "private_ip" {
  value = aws_instance.ubuntu[1].private_ip
}