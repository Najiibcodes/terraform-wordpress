#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

yum install -y mariadb-server php php-mysqlnd
systemctl start mariadb
systemctl enable mariadb

cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
chown -R apache:apache /var/www/html/
chmod -R 755 /var/www/html/

systemctl restart httpd
