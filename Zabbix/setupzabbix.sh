#!/bin/bash

 sudo wget https://repo.zabbix.com/zabbix/4.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.0-2+bionic_all.deb
 sudo dpkg -i zabbix-release_4.0-2+bionic_all.deb
 sudo apt updatee
 
 sudo apt install zabbix-server-mysql
 sudo pt install zabbix-frontend-php
 sudo apt install zabbix-agent -y
 sudo apt install git curl php-curl mc htop -y
 
 sudo mysql -uroot -e "create database zabbix character set utf8 collate utf8_bin;"
 sudo mysql -uroot -e "grant all privileges on zabbix.* to zabbix@localhost identified by '555555';"
 sudo mysql -root -e "FLUSH PRIVILEGES;
 sudo mysql -uroot -e "quit"
 
 sudo zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | sudo mysql -uzabbix -p zabbix 
 
 
 
 
