provider "aws" {
    profile = "default"
    region = "us-west-2"
}
resource "aws_instance" "ec2" {
    ami = "ami-0f2176987ee50226e"
    instance_type = "t2.micro"
}