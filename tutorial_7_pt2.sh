cd /usr/local/cassandra
bin/nodetool status
bin/nodetool ring

sudo apt install python2
read -p "check cassandra status and then launch cqlsh" </dev/tty

bin/cqlsh

#describe cluster;
#describe keyspaces;
#describe tables;
#describe keyspace system;

#CREATE KEYSPACE IF NOT EXISTS vehicle_tracker with replication = {'class':'SimpleStrategy', 'replication_factor':1};
#DESCRIBE KEYSPACES;

#DROP KEYSPACE IF EXISTS vehicle_tracker;
#CREATE KEYSPACE IF NOT EXISTS home_Security with replication = {'class':'SimpleStrategy', 'replication_factor':1};
#use home_security;
#CREATE TABLE IF NOT EXISTS home (home_id text PRIMARY KEY, address text, city text, state text, zip text, contact_name text, phone text, alt_phone text, phone_password text, email text, main_code text, guest_code text);
#DESCRIBE Table home
#CREATE TABLE IF NOT EXISTS activity (home_id text, datetime timestamp, code_used text, event text, PRIMARY KEY (datetime));
#INSERT INTO activity (home_id, datetime, code_used, event) VALUES (HO1, '2021-10-01 12:00:00', 'main', 'entry');
#SELECT * FROM activity;

#copy home_security.activity (home_id, datetime, code_used, event) FROM '/home/sba22230Lab07/events.csv' WITH HEADER = TRUE and delimiter = '|';
#copy home_security.home (home_id, address, city, state, zip, contact_name, phone, alt_phone, phone_password, email, main_code, guest_code) FROM '/home/sba22230/Lab07/homes.csv' WITH HEADER = TRUE and delimiter = '|';
#SELECT * FROM home_security.home;
#COPY home_security.activity TO '/home/sba22230/Downloads/activity_fromCassandra.csv' WITH HEADER = TRUE and delimiter = '|';


read -p "check cassandra export status" </dev/tty

read -p "check employee_data.csv download status" </dev/tty

#CREATE KEYSPACE IF NOT EXISTS employees with replication = {'class':'SimpleStrategy', 'replication_factor':1};
#CREATE TABLE employees.employees_data (employee_id int PRIMARY KEY, firstname text, lastname text, department text, city text);
#USE employees;
#COPY employees.employees_data (employee_id, firstname, lastname, department, city) FROM '/home/sba22230/Lab07/employees_data.csv' WITH HEADER = true;
#select * from employees.employees_data;
