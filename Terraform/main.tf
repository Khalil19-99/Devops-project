provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "Moscow-time-server" {
  ami           = "ami-0fb653ca2d3203ac1"  #Ubuntu 20.04
  instance_type = "t2.micro"
  key_name   = "my_key"
  security_groups = ["time-in-moscow-security-group"]

}
