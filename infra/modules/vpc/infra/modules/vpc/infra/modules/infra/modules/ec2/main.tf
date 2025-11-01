resource "aws_instance" "web" {
  ami                    = "ami-0c55b159cbfafe1f0" # Ubuntu 20.04 example
  instance_type          = "t3.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  key_name               = var.key_name

  tags = {
    Name        = "WebServer"
    Environment = "Production"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
