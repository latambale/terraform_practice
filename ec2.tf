resource "aws_instance" "ubuntu" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "ubuntu_tag"
  }
}