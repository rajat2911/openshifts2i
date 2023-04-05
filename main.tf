resource "aws_instance" "terraformdemo" {
  ami               = var.aws_ami //"ami-04ad2567c9e3d7893"
  availability_zone = var.az      //"us-east-1a"
}

