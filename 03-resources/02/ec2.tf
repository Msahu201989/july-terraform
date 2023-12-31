provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "sample" {
   ami = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"
  root_block_device {
    volume_size = "15"
  }
}

output "ec2_public_ip" {
  value = aws_instance.sample.public_ip
}
