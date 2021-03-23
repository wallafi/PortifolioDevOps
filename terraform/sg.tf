resource "aws_security_group" "sg1" {
  name        = "sg_novo"
  description = "Grupo de segurança ssh e http"

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "${var.ip}"
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  tags = {
    Name = "sg_novo"
  }
}

resource "aws_security_group" "sg12" {
  provider = "aws.us-east-2"
  name        = "sg_novo2"
  description = "Grupo de segurança ssh e http"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "${var.ip}"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  tags = {
    Name = "sg_novo2"
  }
}