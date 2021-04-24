resource aws_instance "vm02" {
  ami = "ami-05d72852800cbf29e"
  instance_type = "t2.micro"
  tags = {
      name = "vm02"
  }
}
