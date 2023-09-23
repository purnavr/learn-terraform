variable "d1" {
  default = 3
}

resource "null_resource" "nothing" {
  count = var.d1
}