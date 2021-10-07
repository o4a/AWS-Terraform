resource "aws_route_table" "akd-route-table" {
  vpc_id = "${aws_vpc.akd-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.akd-gateway.id}"
  }
  tags = {
    Name = "akd-route-table"
  }
}

resource "aws_route_table_association" "akd-subnet-association" {
  subnet_id = "${aws_subnet.akd-subnet-a.id}"
  route_table_id = "${aws_route_table.akd-route-table.id}"
}

