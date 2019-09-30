provider "aws" {
    profile = "default"
    region = "us-west-2"
}
resource "aws_instance" "ec2" {
    ami = "ami-0f2176987ee50226e"
    instance_type = "t2.micro"
    key_name = "terraform"
}

resource "aws_route53_zone" "deepthinalla" {
    name = "deepthinalla.com"
}

resource "aws_route53_record" "deepthinalla-A" {
    zone_id = aws_route53_zone.deepthinalla.zone_id
    name = "deepthinalla.com"
    type = "A"
    ttl = "100"
    records = [aws_instance.ec2.public_ip]
}