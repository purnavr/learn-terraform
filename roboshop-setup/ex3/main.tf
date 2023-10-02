data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


resource "aws_instance" "frontend" {
  for_each               = var.instances
  ami                    = data.aws_ami.ami.id
  instance_type          = each.value[type]
  vpc_security_group_ids = ["sg-0497e25cd969a429f"]
  tags                   = {
    Name = each.value[name]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t2.micro"
    }
    user = {
      name = "user"
      type = "t2.micro"
    }
  }
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}

output "pub_ip" {
  value = [for k, v in aws_instance.frontend : "${k} - ${v.public_ip}"]
}