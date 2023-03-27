sudo apt update
sudo apt install mysql-server 
sudo apt install mysql-client 
sudo apt install libmariadb-java

mysql -uroot -p

mysql>create database Test;
mysql>use Test;
mysql>CREATE TABLE testtable (id INTEGER PRIMARY KEY,
description VARCHAR(255));
