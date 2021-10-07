resource "aws_internet_gateway" "akd-gateway" {
  vpc_id = "${aws_vpc.akd-vpc.id}"
  tags = {
    Name = "akd-gateway"
  }
}
