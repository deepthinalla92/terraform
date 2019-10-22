#!/bin/bash
set -e
set +x
yum update -y
yum install httpd -y
chkconfig httpd on
chmod 777 /var/www/html
echo "<html><body>Hello Ec2. I am your creator.</body></html>" > /var/www/html/index.html


