resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = "sg-0497e25cd969a429f"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "test" {
  connection {
    user     = "root"
    password = DevOps321
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo hello"
    ]
  }
}
