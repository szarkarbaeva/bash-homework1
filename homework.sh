#!/bin/bash

function kpop() {
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudp usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo
}

kpop

function wordpress() {
	sudo yum install httpd -y
	sudo systemctl start httpd
	sudo systemctl enable httpd
	sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
	sudo wget https://wordpress.org/latest.tar.gz
	sudo tar -xzf latest.tar.gz
	sudo mv wordpress/* /var/www/html
	sudo rm -r /var/www/html/index.html
	sudo chown -R apache:apache /var/www/html
	sudo chmod -R 755 /var/www/html
	sudo systemctl restart httpd
}

wordpress

function calculator() {
	echo $((12*4)) 
	echo $((12/4))
	echo $((12-4))
	echo $((12+4))
}

calculator

function binary() {
	sudo yum install tree -y
	sudo yum install -y yum-utils shadow-utils
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum -y install terraform
	terraform version
}

binary
