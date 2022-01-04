/* NAT */
resource "aws_nat_gateway" "EM1NAT" {
  allocation_id = "${aws_eip.EM1-EIP.id}"
  subnet_id     = "${element(aws_subnet.public_subnet.*.id, 0)}"
  depends_on    = [aws_internet_gateway.ig]
  tags = {
    Name        = "nat"

  }
}
