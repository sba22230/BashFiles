cd 
cd Downloads
wget https://downloads.apache.org/spark/spark-3.2.3/spark-3.2.3-bin-hadoop3.2.tgz 
sudo tar -xvf spark-3.2.3-bin-hadoop3.2.tgz

sudo mv ./spark-3.2.3-bin-hadoop3.2 /usr/local
cd /usr/local
sudo ln -sf ./spark-3.2.3-bin-hadoop3.2 spark

sudo chown -R sba22230:hadoopgroup spark*

cd /usr/local/spark
./bin/pyspark
read -p "Exit the pyspark session" </dev/tty

 cd /usr/local

sudo wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh

read -p "Note change the default path to /usr/local/anaconda3" </dev/tty
sudo bash Anaconda3-2022.10-Linux-x86_64.sh

cd /home/sba22230
echo 'export SPARK_HOME=/usr/local/spark' >> ./.bashrc
echo 'export PATH=$PATH:$SPARK_HOME/bin' >> ./.bashrc 
echo 'export PYSPARK_PYTHON=/usr/local/anaconda3/bin/python3' >> ./.bashrc
echo 'export PYSPARK_DRIVER_PYTHON=jupyter' >> ./.bashrc
echo 'export PYSPARK_PYTHON=python3' >> ./.bashrc
echo 'export PYSPARK_DRIVER_PYTHON_OPTS="notebook"' >> ./.bashrc

source ./.bashrc

pyspark

sudo apt install jupyter
pyspark

read -p "Exit the pyspark session" </dev/tty