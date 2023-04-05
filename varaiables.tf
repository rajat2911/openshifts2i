variable "aws_ami" {
  description = "AWS AMI Values"
  type = string
  default = "ami-04ad2567c9e3d7893"
  #default = ""
}
variable "az" {
  description = "availability_zones value"
  type = string
  default = "us-east-1a"
  #default = ""
  sensitive = true

}
variable "sub-net" {
  description = "Subnet values"
  type = string
  default = "subnet-008b0a0d1c302b578"
  #default = ""
  sensitive = true
  
}
variable "IN" {
  description = "Intancey type value"
  type = string
  default = "t2.small"
  #default = ""
}

//terraform plan -var="aws-ami=ami-04ad2567c9e3d7893", -var="az=us-east-1a",-var="IN=t2.micro"
/*export TF_VAR_IN=t2.micro
export TF_VAR_sub-net=subnet-008b0a0d1c302b578
export TF_VAR_az=us-east-1b
export TF_VAR_aws_ami=ami-04ad2567c9e3d7893
unset TF_VAR_az

*/
