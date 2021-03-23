resource "aws_instance" "ec2-1" {
    type = "${var.type}"
    ami = "${var.ami["us-east-1"]}"
    tags = {
        Name = "ec2-1"
    }
    key_name = "${var.key}"
    vpc_security_group_ids = ["${aws_security_group.sg_novo1.id}"]
    depends_on = [aws_security_group.sg_novo1]
}

resource "aws_instance" "ec2-2" {
    provider = "aws.us-east-2"
    type = "${var.type}"
    ami = "${var.ami["us-east-2"]}"
    tags = {
        Name = "ec2-2"
    }
    key_name = "${var.key}"
    vpc_security_group_ids = ["${aws_security_group.sg_novo2.id}"]
    depends_on = [aws_security_group.sg_novo2]
  
}