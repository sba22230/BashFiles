wget http://snapshot.debian.org/archive/debian/20190501T215844Z/pool/main/g/glibc/multiarch-support_2.28-10_amd64.deb
sudo dpkg -i multiarch-support*.deb
wget http://snapshot.debian.org/archive/debian/20170705T160707Z/pool/main/o/openssl/libssl1.0.0_1.0.2l-1%7Ebpo8%2B1_amd64.deb
sudo dpkg -i libssl1.0.0*.deb

read -p "check update instalation status" </dev/tty

mysql --version

read -p "check mysql status" </dev/tty

mysql -uroot -p


read -p "Create the mysql table for benchmarking tutorial" </dev/tty 

#mysql>create database BenchTest;
#mysql>use BenchTest;
#mysql>CREATE TABLE usertable (YCSB_KEY VARCHAR(255) PRIMARY KEY,
#FIELD0 VARCHAR(255), FIELD1 VARCHAR(255),
#FIELD2 VARCHAR(255), FIELD3 VARCHAR(255),
#FIELD4 VARCHAR(255), FIELD5 VARCHAR(255),
#FIELD6 VARCHAR(255), FIELD7 VARCHAR(255),
#FIELD8 VARCHAR(255), FIELD9 VARCHAR(255));


