variable "sample" {
  default = "hello"
}

#
output "sample" {
  value = var.sample
}

output "sample1" {
  value = "hey, ${var.sample}"
}

#no. data type dont need ""
variable "sample2" {
  default = 100
}

#boolean data type dont need ""
variable "sample3" {
  default = true
}

# List Variable

variable "sample4" {
  default = [
  "hello",
    100,
    true

  ]
}

# Map Variable

variable "sample5" {
  default = {
    string = "hello"
    number = 100
    boolean = true
  }
}

# Access a list value

output "sample4" {
  value = var.sample4[0]
}

# Access a MAP value
output "sample5" {
  value = var.sample5["number"]
}

# Pick a variable from terraform.tfvars file
variable "sample6" {}
output "sample6" {
  value = var.sample6
}

## Pick a variable from CLI
variable "sample7" {}
  output "sample7" {
    value = var.sample7
  }

## Pick a variable from shell
variable "sample8" {}
output "sample8" {
  value = var.sample8
}
