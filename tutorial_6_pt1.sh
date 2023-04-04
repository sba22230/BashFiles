
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
pyspark

read -p "launch the tutorial 6 notebooks" </dev/tty #

stop()

stop-dfs.sh
stop-yarn.sh
