resource "aws_eip" "my-eip" {
  instance = aws_instance.myec2instance.id
  vpc = true
  depends_on = [aws_internet_gateway.myigw]
}