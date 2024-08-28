
resource "aws_instance" "web" {
  ami                                  = "ami-02c21308fed24a8ab"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "wordpress"
  monitoring                           = false
  security_groups                      = ["launch-wizard-7"]
  subnet_id                            = "subnet-0b85ea179c52603ff"
  tags = {
    Name = "success1"
  }
  
}
