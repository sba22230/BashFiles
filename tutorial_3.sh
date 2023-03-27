cd 
cd Desktop/
mkdir Hadoop
cd
cd Downloads
unzip Tutorial_3\ \(Python\ code\)\ -\ Mapreduce\ Programs-20230322.zip 
unzip MaxTemperature.zip
cp -r MaxTemperature ../Desktop/Hadoop/
unzip top10.zip
cp -r top10 ../Desktop/Hadoop/
unzip WordCount.zip
cp -r WordCount ../Desktop/Hadoop/
cd
nano ./Desktop/Hadoop/WordCount/mapper.py
nano ./Desktop/Hadoop/WordCount/reducer.py

cd ./Desktop/Hadoop/WordCount/
echo 'jack be nimble jack be quick' | ./mapper.py | sort -t 1 | ./reducer.py
cd

cd /usr/local/hadoop/etc/hadoop/

sed -i "s/<configuration>/ /g" mapred-site.xml
sed -i "s/<property>/ /g" mapred-site.xml
sed -i "s/<name>mapreduce.framework.name<\/name>/ /g" mapred-site.xml
sed -i "s/<value>yarn<\/value>/ /g" mapred-site.xml
sed -i "s/<\/property>/ /g" mapred-site.xml
sed -i "s/<\/configuration>/ /g" mapred-site.xml

echo '<configuration>' >> mapred-site.xml
echo '<property>' >> mapred-site.xml
echo '<name>yarn.app.mapreduce.am.env</name>' >> mapred-site.xml
echo '<value>HADOOP_MAPRED_HOME=${HADOOP_HOME}</value>' >> mapred-site.xml
echo '</property>' >> mapred-site.xml
echo '<property>' >> mapred-site.xml
echo '<name>mapreduce.map.env</name>' >> mapred-site.xml
echo '<value>HADOOP_MAPRED_HOME=${HADOOP_HOME}</value>' >> mapred-site.xml
echo '</property>' >> mapred-site.xml
echo '<property>' >> mapred-site.xml
echo '<name>mapreduce.reduce.env</name>' >> mapred-site.xml
echo '<value>HADOOP_MAPRED_HOME=${HADOOP_HOME}</value>' >> mapred-site.xml
echo '</property>' >> mapred-site.xml
echo '</configuration>' >> mapred-site.xml

cd
cd ./Desktop/Hadoop/WordCount

start-dfs.sh
start-yarn.sh

read -p "Press enter to continue" </dev/tty

hadoop fs -mkdir /user1
hadoop fs -ls /

hadoop fs -put ./britney-spears.txt /user1
hadoop fs -ls /user1
cd
cd ./Desktop/Hadoop/WordCount
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.2.4.jar -file ./mapper.py -mapper ./mapper.py -file ./reducer.py -reducer ./reducer.py -input /user1/britney-spears.txt -output /out1
hadoop fs -ls /user1
hadoop fs -ls /
hadoop fs -ls /out1
hadoop fs -cat /out1/part-00000

stop-yarn.sh
stop-dfs.sh


