provider "aws" {
    profile = "default"
    region = "us-west-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-00f9b857d2e4ff4e8"
    instance_type = "t2.micro"
    key_name = "terraform"
    user_data = "${file("./docker-run.sh")}"
}

resource "aws_route53_zone" "deepthinalla_test" {
    name = "test.deepthinalla.com"
}

resource "aws_route53_record" "deepthinalla-test-ns" {
    zone_id = "Z1ZE89HABHJXJ5"
    name = "test.deepthinalla.com"
    type = "NS"
    ttl = "100"
    records = aws_route53_zone.deepthinalla_test.name_servers
}

resource "aws_route53_record" "deepthinalla-A" {
    zone_id = aws_route53_zone.deepthinalla_test.zone_id
    name = "test.deepthinalla.com"
    type = "A"
    ttl = "100"
    records = [aws_instance.ec2.public_ip]
}

