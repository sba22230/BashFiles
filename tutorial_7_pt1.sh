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

sed -i "s/cluster_name:/cluster_name:BDSP Cluster/g" cassandra.yaml
sed -i "s/num_tokens:/num_tokens: 24/g" cassandra.yaml

sed -i "s/dc=/dc=ClockworkAngels/g" cassandra-rackdc.properties
sed -i "s/rack=/rack=R40/g" cassandra-rackdc.properties

cd ..
bin/cassandra -p cassandra.pid

ps aux | grep cassandra


# read -p "Launch new terminal and check cassandra status" </dev/tty