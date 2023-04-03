cd 
cd Downloads
#wget https://dlcdn.apache.org/cassandra/3.11.14/apache-cassandra-3.11.14-bin.tar.gz
tar -zxvf ./apache-cassandra-3.11.14-bin.tar.gz
sudo mv ./apache-cassandra-3.11.14 /usr/local
cd /usr/local
ls
sudo ln -sf ./apache-cassandra-3.11.14 cassandra
sudo chown -R sba22230:hadoopgroup cassandra
ls
cd cassandra
cd conf

echo 'cluster_name: 'BDSP Cluster'' >> ./cassandra.yaml
echo 'num_tokens: 24' >> ./cassandra.yaml

echo 'dc=ClockworkAngels' >> ./cassandra-rackdc.properties
echo 'rack=R40' >> ./cassandra-rackdc.properties

cd ..
bin/cassandra -p cassandra.pid

ps aux | grep cassandra


# read -p "Launch new terminal and check cassandra status" </dev/tty
