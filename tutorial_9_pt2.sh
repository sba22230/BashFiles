
read -p "Instal YCSB" </dev/tty 

cd ~
cd Downloads

wget https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar xfvz ycsb-0.17.0.tar.gz
cd ycsb-0.17.0

bin/ycsb.sh load basic -P workloads/workloada
bin/ycsb.sh run basic -P workloads/workloada

read -p "Instal Mongo DB" </dev/tty 
wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.2.10.tgz
sudo tar zxvf mongodb-linux-x86_64-ubuntu1604-3.2.10.tgz
sudo mv ./mongodb-linux-x86_64-ubuntu1604-3.2.10 /usr/local


cd /usr/local
sudo chown -R sba22230:hadoopgroup mongodb-linux-x86_64-ubuntu1604-3.2.10
sudo ln -s ./mongodb-linux-x86_64-ubuntu1604-3.2.10 ./mongodb


sudo chown -R sba22230:hadoopgroup ./mongodb*
cd ..
sudo mkdir mongodbdata
sudo chown -R sba22230:hadoopgroup mongodbdata
cd / 
sudo ln -s /usr/mongodbdata data
cd data
mkdir -p db

cd ~ 
pwd 

read -p "Check that you are at the root folder" <dev/tty

echo 'export PATH=$PATH:/usr/local/mongodb/bin' >> ./.bashrc

source ./.bashrc
mongod –bind_ip 127.0.0.1 
read -p "new terminal needed" <dev/tty


