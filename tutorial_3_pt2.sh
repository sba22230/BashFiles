start-dfs.sh
start-yarn.sh
jps
read -p "Press enter to continue" </dev/tty

# Part 11

cd
cd Desktop
cd Hadoop
cd MaxTemperature

ls
read -p "Press enter to continue" </dev/tty

hadoop fs -put ./sample.txt /user1
chmod 777 ./findMaxTemp.sh

./findMaxTemp.sh
hadoop fs -ls /user1

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.2.4.jar -file ./max_temperature_map.py -mapper ./max_temperature_map.py -file ./max_temperature_reduce.py -reducer ./max_temperature_reduce.py -input /user1/sample.txt -output /out2

hadoop fs -ls /out2/
hadoop fs -cat /out2/part-00000

chmod +x max_temperature_map.py
chmod +x max_temperature_reduce.py

cat ./sample.txt | ./max_temperature_map.py | sort | ./max_temperature_reduce.py



# Part 111

jps
read -p "Press enter to continue" </dev/tty

cd 
cd Desktop
cd Hadoop
cd top10
ls
read -p "Press enter to continue" </dev/tty

hadoop fs -put ./auto-mpg-data-original.txt /user1/
hadoop fs -ls /user1
read -p "Press enter to continue" </dev/tty

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.2.4.jar -file ./topTenCarsMappers.py -mapper ./topTenCarsMappers.py -file ./topTenCarsReducer.py -reducer ./topTenCarsReducer.py -input /user1/auto-mpg-data-original.txt -output /out5

hadoop fs -ls /out5
hadoop fs -cat /out5/*

read -p "Press enter to continue" </dev/tty

stop-yarn.sh
stop-dfs.sh
