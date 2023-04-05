resource "aws_instance" "myec2instance" {
    ami                    = "ami-047a51fa27710816e" # Amazon Linux
    instance_type          = "t2.small"
    key_name               = "LinuxAWS"
    subnet_id =  aws_subnet.mysubnet.id
    vpc_security_group_ids = [ aws_security_group.mysecuritygroup.id ]
      user_data = <<EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF
    tags = {
    "Name" = "myec2instance"
    "org-id"="123456"
    "owner"="Rajat"
  }     
}