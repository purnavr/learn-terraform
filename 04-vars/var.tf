#variable "sample" {
#  default = 200
#}
#
#output "sample" {
#  value = var.sample
#}
#
#variable "sample1"{}
#
#output "sample1" {
#  value = var.sample1
#}
#
#variable "sample2" {}
#
#output "sample2" {
#  value = var.sample2
#}
#
#variable "sample3" {}
#
#output "test" {
#  value = var.sample3
#}
#
#variable "input" {}
#
#output "input" {
#  value = var.input
#}

variable "sample4" {
  default = [10,"apple"]
}

output "sample4" {
  value = var.sample4[1]
  value = var.sample4
}
