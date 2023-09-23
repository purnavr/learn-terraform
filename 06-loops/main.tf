variable "d1" {
  default = 3
}

resource "null_resource" "nothing" {
  count = var.d1
}

variable "d2" {
  default = ["apple", "oranges"]
}

resource "null_resource" "d2" {
  count = length(var.d2)
}