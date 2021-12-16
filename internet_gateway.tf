/* Internet gateway for the public subnet */
resource "aws_internet_gateway" "ig" {
  vpc_id = "${aws_vpc.EM1-VPC.id}"
  tags = {
    Name        = "EM1igw"
  }
}
