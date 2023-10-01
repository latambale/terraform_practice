resource "aws_instance" "ubuntu" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = var.size
  count = 2
  tags = {
    Name = "ubuntu_${count.index+1}"
  }

  depends_on = [
  aws_s3_bucket.bucket
  ]
}

resource "aws_s3_bucket" "bucket" {
  bucket = "saurabh-latambale-01102023"
}