resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0497e25cd969a429f"]

  tags = {
    Name = "HelloWorld"
  }

  provisioner "remote-exec" {

    connection {
      host = self.public_ip
      user = "root"
      password = "DevOps321"
    }

    inline = [
      "echo hello"
    ]
  }

}