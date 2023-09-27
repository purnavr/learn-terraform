data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "ami" {
  value = data.aws_ami.ami.id

resource "aws_instance" "test" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type == "" ? "t2.micro" : var.instance_type
}

variable "instance_type" {}

#
