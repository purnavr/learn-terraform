data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = data.aws_ami.ami.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0497e25cd969a429f"]
  tags = {
    Name = var.instances[count.index]
  }
}

variable "instances" {
  default = ["cart", "catalogue", "user", "payment", "shipping"]
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}

output "pub_ip" {
  value = [for k, v in aws_instance.frontend : "${k} - ${v.public_ip}"]
}