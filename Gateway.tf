resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.EM1-EIP.id
  tags = {
    Name        = "${var.environment}-igw"
    Environment = "${var.environment}"
  }
}
