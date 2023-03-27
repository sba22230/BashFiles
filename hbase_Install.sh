stop-yarn.sh
stop-dfs.sh

cd Downloads
wget https://www.apache.org/dist/hbase/stable/hbase-2.4.15-bin.tar.gz


sudo tar -xvf hbase-2.4.15-bin.tar.gz

sudo mv /home/sba22230/Downloads/hbase-2.4.15 /usr/local

cd /usr/local

sudo ln -sf /usr/local/hbase-2.4.15 /usr/local/hbase

sudo chown -R sba22230:hadoopgroup hbase
sudo chown -R sba22230:hadoopgroup hbase-2.4.15

cd /home/sba22230/
sudo mkdir /home/sba22230/hbase

sudo chown -R sba22230:hadoopgroup hbase
sudo chmod 777 hbase


cd /usr/local/hbase/conf/
cp hbase-site.xml hbase-site.xml.copy

sed -i "s/<configuration>/ /g" hbase-site.xml
sed -i "s/<\/configuration>/ /g" hbase-site.xml

echo '<configuration>' >> hbase-site.xml
echo '<property>' >> hbase-site.xml
echo '<name>hbase.rootdir</name>' >> hbase-site.xml
echo '<value>file:///home/sba22230/hbase</value>' >> hbase-site.xml
echo '</property>' >> hbase-site.xml
echo '</configuration>' >> hbase-site.xml

read -p "Press enter to continue" </dev/tty
nano hbase-site.xml

echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> hbase-env.sh
echo 'export LD_LIBRARY_PATH=/usr/local/hadoop/lib/native' >> hbase-env.sh

start-dfs.sh
start-yarn.sh
jps
read -p "Press enter to continue" </dev/tty

cd /usr/local/hbase/bin/
./start-hbase.sh
jps
read -p "Press enter to continue" </dev/tty

cd /usr/local/hbase

bin/hbase shell




