resource "aws_vpc" "akd-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "akd-vpc"
  }
}
resource "aws_subnet" "akd-subnet-a" {
  vpc_id = "${aws_vpc.akd-vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
}
