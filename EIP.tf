/* Elastic IP for NAT */
resource "aws_eip" "EM1-EIP" {
  vpc      = true
  depends_on = [aws_internet_gateway.ig]
}
