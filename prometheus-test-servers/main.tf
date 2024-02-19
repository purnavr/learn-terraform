#resource "aws_spot_instance_request" "node1" {
#  ami           = "ami-0d3a21488b4d72948"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = ["sg-0497e25cd969a429f"]
#  wait_for_fulfillment = true
#
#  tags = {
#    Name = "prom-test-server"
#  }
#}

resource "aws_spot_instance_request" "node1" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0497e25cd969a429f"]
  wait_for_fulfillment = true
}

#ami-0d3a21488b4d72948
#resource "aws_ec2_tag" "node1" {
#  resource_id = aws_spot_instance_request.node1.spot_instance_id
#  key         = "Name"
#  value       = "prometheus"
#}


