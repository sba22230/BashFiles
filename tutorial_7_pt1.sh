cd 
cd Downloads
wget https://www.apache.org/dyn/closer.lua/cassandra/3.11.14/apache-cassandra-3.11.14-bin.tar.gz
tar -zxvf ./apache-cassandra-3.11.14-bin.tar.gz
sudo mv ./apache-cassandra-3.11.14 /usr/local
cd /usr/local
ls
sudo ln -sf ./apache-cassandra-3.11.14 cassandra
sudo chown -R sba22230:hadoopgroup cassandra
ls
cd cassandra
cd conf

echo 'export cluster_name: 'BDSP Cluster'' >> ./cassandra.yaml
echo 'export num_tokens: 24' >> ./cassandra.yaml

echo 'dc=ClockworkAngels' >> ./cassandra-rackdc.properties
echo 'rack=R40' >> ./cassandra-rackdc.properties

cd ..
bin/cassandra -p cassandra.pid

ps aux | grep cassandra


# read -p "Launch new terminal and check cassandra status" </dev/tty