resource "aws_instance" "sample" {
  count = length(var.instances)
  ami = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"
  tags = {
    Name = element(var.instances, count.index )
  }
}

output "public_ip" {
  value = aws_instance.sample.*.public_ip
}

variable "instances" {
  default = ["cart", "catalogue"]
}