sudo apt update
sudo apt install mysql-server 
sudo apt install mysql-client 
sudo apt install libmariadb-java

mysql -uroot -p

# mysql>create database Test;
# mysql>use Test;
# mysql>CREATE TABLE testtable (id INTEGER PRIMARY KEY, description VARCHAR(255));

read -p "Exit the MySql session" </dev/tty

# mysql> sudo mysql
# mysql> UPDATE mysql.user SET authentication_string=null WHERE User='root';
# mysqL> flush privileges;
# mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

# mysql> flush privileges;
# Exit MySQL.
# mysql> exit
 
# mysql> mysql -uroot -p

