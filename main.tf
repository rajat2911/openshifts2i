resource "aws_instance" "terraformdemo" {
  ami               = var.aws_ami //"ami-04ad2567c9e3d7893"
  key_name          = "terraform-key"
  instance_type     = var.IN // "t2.small"
  count             = 1
}

