wget https://dlcdn.apache.org/hadoop/common/hadoop-3.2.4/hadoop-3.2.4.tar.gz

cd Downloads
tar -xvf hadoop-3.2.4.tar.gz

sudo mv ./hadoop-3.2.4 /usr/local/

cd /usr/local
sudo ln -sf /usr/local/hadoop-3.2.4/ /usr/local/hadoop

sudo chown -R sba22230:hadoopgroup /usr/local/hadoop*

cd

#nano ./.bashrc

echo '# Hadoop config' >> ./.bashrc
echo 'export HADOOP_HOME=/usr/local/hadoop' >> ./.bashrc
echo 'export HADOOP_MAPRED_HOME=${HADOOP_HOME}' >> ./.bashrc
echo 'export HADOOP_COMMON_HOME=${HADOOP_HOME}' >> ./.bashrc
echo 'export HADOOP_HDFS_HOME=${HADOOP_HOME}' >> ./.bashrc
echo 'export YARN_HOME=${HADOOP_HOME}' >> ./.bashrc
echo 'export HADOOP_CONF_DIR=${HADOOP_HOME}/etc/hadoop' >> ./.bashrc
echo '# Native path' >> ./.bashrc
echo 'export HADOOP_COMMON_LIB_NATIVE_DIR=${HADOOP_HOME}/lib/native' >> ./.bashrc
echo 'export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"' >> ./.bashrc
echo '# Java path' >> ./.bashrc
echo 'export JAVA_HOME="/usr"' >> ./.bashrc
echo '# OS path' >> ./.bashrc
echo 'export PATH=$PATH:$HADOOP_HOME/bin:$JAVA_PATH/bin:$HADOOP_HOME/sbin' >> ./.bashrc

source ./.bashrc

#nano /usr/local/hadoop/etc/hadoop/hadoop-env.sh

echo 'export JAVA_HOME="/usr"' >> /usr/local/hadoop/etc/hadoop/hadoop-env.sh


