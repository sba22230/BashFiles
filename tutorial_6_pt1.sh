
sudo apt install ncat
ncat -l -p 7777
cd ~
mkdir Lab06
cd Downloads
unzip Tutorial_6_Spark_SQL.zip -d ~/Home/Lab06/
unzip snscrapper.zip -d ~/Home/Lab06/
unzip 'Tutorial 6 - Spark live Streaming.zip' -d ~/Home/Lab06/


start-dfs.sh
start-yarn.sh
pyspark

read -p "launch the tutorial 6 notebooks" </dev/tty #

stop()

stop-dfs.sh
stop-yarn.sh
