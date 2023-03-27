start-dfs.sh
start-yarn.sh
hadoop fs -ls /
cd
pwd
cd Downloads
pwd
hadoop fs -put ./hadoop-3.2.4.zip /
hadoop fs -ls /
hadoop fs -rm /hadoop-3.2.4.zip
hadoop fs -ls /

stop-dfs.sh
stop-yarn.sh
