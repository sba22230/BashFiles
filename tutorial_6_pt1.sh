
sudo apt install ncat
ncat -l -p 7777
cd ~
mkdir Lab06
cd Downloads
unzip 'Tutorial 6 SparkSQL.zip' -d ~/Lab06/
unzip snscrapper-Ubuntu.zip -d ~/Lab06/
unzip 'Tutorial 6 - Spark live Streaming.zip' -d ~/Lab06/


start-dfs.sh
start-yarn.sh
# Buried in the Spark SQl note book is instruction to move a file to hadoop
cd ~/Lab06/
cd 'Tutorial 6 SparkSQL'
hadoop fs -put people.json /user1

hadoop fs -put ./airport-codes-na.txt /user1
hadoop fs -put ./departuredelays.csv /user1
hadoop fs -put ./ccFraud.csv.gz /user1
pyspark

read -p "launch the tutorial 6 notebooks" </dev/tty #

stop()

stop-dfs.sh
stop-yarn.sh
