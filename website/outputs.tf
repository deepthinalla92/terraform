output "dn_hosted_zone" {
    description = "hosted zone for test.deepthinalla.com"
    value = {
        zone_id = aws_route53_zone.deepthinalla_test.zone_id
        name_servers = aws_route53_zone.deepthinalla_test.name_servers
    }
}

output "dn_ec2" {
    description = "ec2 instance hosting deepthinalla.com"
    value = {
        key_name = aws_instance.ec2.key_name
        public_ip = aws_instance.ec2.public_ip
    }
}