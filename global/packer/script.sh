#!/bin/bash
# set -e
# set +x
# sudo yum update -y
# sudo yum install httpd -y
# sudo service httpd start
# sudo chkconfig httpd on
# sudo chmod 777 /var/www/html
# sudo echo "<html><body>Hello Ec2. I am your creator.</body></html>" > /var/www/html/index.html
# cat /var/www/html/index.html
sudo yum install docker -y
sudo service docker start
# sudo docker run -p 81:80 --name website -d deepthinalla/dn-website:0.1



