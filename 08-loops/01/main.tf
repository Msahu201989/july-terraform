resource "aws_instance" "sample" {
  count = 2
  ami = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"
  tags = {
    Name = "test-${count.index}"
  }
}

output "public_ip" {
  value = aws_instance.sample.*.public_ip
}