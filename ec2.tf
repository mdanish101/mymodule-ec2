resource "aws_instance" "vm01"{
  instance_type = "t2.micro"
  ami = data.aws_ami.std_ami.id
}

data "aws_ami" "std_ami" {
  most_recent = true
  owners      = ["amazon"]
filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }
}
