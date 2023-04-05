resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "name" = "myvpc"
    }
  
}

resource "aws_subnet" "mysubnet" {
    cidr_block = "10.0.1.0/24"
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "us-east-1a"
    #map_customer_owned_ip_on_launch = true
  
}


resource "aws_internet_gateway" "myigw" {

vpc_id = aws_vpc.myvpc.id

}


resource "aws_route_table" "myroutetable" {
  vpc_id = aws_vpc.myvpc.id
}


resource "aws_route" "myroute" {
    route_table_id = aws_route_table.myroutetable.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
}

## Resource 6 : Associate a Route Table with subnet 

resource "aws_route_table_association" "myroutetableassociation" {
    route_table_id = aws_route_table.myroutetable.id
    subnet_id = aws_subnet.mysubnet.id
 
}


## Resource 7 : Create a Security Group 

resource "aws_security_group" "mysecuritygroup" {
 name = "MYSG"
 description = "DEFAULT SECURITY GROUP"
 vpc_id = aws_vpc.myvpc.id

 ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all IP and Ports Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}