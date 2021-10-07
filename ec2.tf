resource "aws_instance" "akd-terra-instance" {
    ami = "ami-0412dfb598aeca2c6"
    instance_type = "t2.xlarge"
    subnet_id = "${aws_subnet.akd-subnet-a.id}"
    associate_public_ip_address="true"
    vpc_security_group_ids = [ "${aws_security_group.akd-sg.id}" ]
    key_name= "akd"
    tags = {
        Name = "akd-terra-instance"
    }
}
