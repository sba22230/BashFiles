cd /usr/local/hadoop/etc/hadoop

sed -i "s/<configuration>/ /g" core-site.xml
sed -i "s/<\/configuration>/ /g" core-site.xml
echo '<configuration>' >> core-site.xml
echo '<property>' >> core-site.xml
echo '<name>fs.default.name</name>' >> core-site.xml
echo '<value>hdfs://localhost:9000</value>' >> core-site.xml
echo '</property>' >> core-site.xml
echo '</configuration>' >> core-site.xml

sed -i "s/<configuration>/ /g" hdfs-site.xml
sed -i "s/<\/configuration>/ /g" hdfs-site.xml
echo '<configuration>' >> hdfs-site.xml
echo '<property>' >> hdfs-site.xml
echo '<name>dfs.replication</name>' >> hdfs-site.xml
echo '<value>1</value>' >> hdfs-site.xml
echo '</property>' >> hdfs-site.xml
echo '<property>' >> hdfs-site.xml
echo '<name>dfs.name.dir</name>' >> hdfs-site.xml
echo '<value>file:/usr/local/hadoop/hadoopdata/hdfs/namenode</value>' >> hdfs-site.xml
echo '</property>' >> hdfs-site.xml
echo '<property>' >> hdfs-site.xml
echo '<name>dfs.data.dir</name>' >> hdfs-site.xml
echo '<value>file:/usr/local/hadoop/hadoopdata/hdfs/datanode</value>' >> hdfs-site.xml
echo '</property>' >> hdfs-site.xml
echo '</configuration>' >> hdfs-site.xml

cp mapred-site.xml mapred-site.xml.template

sed -i "s/<configuration>/ /g" mapred-site.xml
sed -i "s/<\/configuration>/ /g" mapred-site.xml
echo '<configuration>' >> mapred-site.xml
echo '<property>' >> mapred-site.xml
echo '<name>mapreduce.framework.name</name>' >> mapred-site.xml
echo '<value>yarn</value>' >> mapred-site.xml
echo '</property>' >> mapred-site.xml
echo '</configuration>' >> mapred-site.xml

sed -i "s/<configuration>/ /g" yarn-site.xml
sed -i "s/<\/configuration>/ /g" yarn-site.xml
echo '<configuration>' >> yarn-site.xml
echo '<property>' >> yarn-site.xml
echo '<name>yarn.nodemanager.aux-services</name>' >> yarn-site.xml
echo '<value>mapreduce_shuffle</value>' >> yarn-site.xml
echo '</property>' >> yarn-site.xml
echo '</configuration>' >> yarn-site.xml

cd ../..
cd bin
./hdfs namenode -format

cd
start-dfs.sh
start-yarn.sh
jps


