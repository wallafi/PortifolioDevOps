variable "ami" {
  type = "map"

  default = {
      "us-east-1" = "ami-042e8287309f5df03"
      "us-east-2" = ""
  }
}

variable "type" {
  
  default = "t2.micro"
}

variable "key" {

    default = "chave"
  
}

variable "ip" {
  type = "list"
  default = ["178.255.206.71/32"]
}