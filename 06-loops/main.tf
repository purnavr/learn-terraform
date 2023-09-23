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

variable "d3" {
  default = {
    apple = {
      name = apple
      count = 3
    }
    banana = {
      name = apple
      count = 3
    }
  }

}

resource "null_resource" "d3" {
  each_value = var.d3
}

#