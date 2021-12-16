/* Routing table for private subnet */
resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.EM1-VPC.id}"
  tags = {
    Name        = "EM1-private-route-table"
  }
}

/* Routing table for public subnet */
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.EM1-VPC.id}"
  tags = {
    Name        = "EM1-public-route-table"
  }
}