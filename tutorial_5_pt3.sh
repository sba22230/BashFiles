cd ~
cd /Desktop
mkdir Lab05
cd Lab05

start-dfs.sh
start-yarn.sh
jps
read -p "Check that Hadoop has started" </dev/tty
# Go to the downloads folder
cd ~
cd Downloads
mkdir Tutorial_5_Spark_WordCount_Example
unzip Tutorial_5_Spark_WordCount_Example.zip -d Tutorial_5_Spark_WordCount_Example
cd Tutorial_5_Spark_WordCount_Example
cp ./*.* ../../Lab05/
cd ~
cd Lab05/
hadoop fs -put ./pg30123.txt /user1
hadoop fs -ls /user1
pyspark 

# in the jupyter notebook follow the steps in the tutorial

