cd ~
cd Desktop
mkdir Lab05
cd Lab05

start-dfs.sh
start-yarn.sh
jps
read -p "Check that Hadoop has started" </dev/tty
# Go to the downloads folder
cd ~
cd Downloads
unzip Tutorial_5_Spark_Word_Count_Example.zip -d ~/Home/Lab05/
unzip Tutorial_5_DL -d ~/Home/Lab05/
unzip Tutorial_5_NN -d ~/Home/Lab05/

cd ~
cd Lab05/

hadoop fs -put ./pg30123.txt /user1
hadoop fs -ls /user1
pyspark 

# in the jupyter notebook follow the steps in the tutorial
read -p "launch the tutorial 5 notebooks" </dev/tty #

stop()
{
    stop-dfs.sh
    stop-yarn.sh
}

