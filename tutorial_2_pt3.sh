sudo addgroup hadoopgroup
sudo adduser -ingroup hadoopgroup sba22230

sudo apt install ssh
sudo systemctl enable ssh
sudo systemctl start ssh

su - sba22230

ssh-keygen -t rsa -P ""

cat /home/sba22230/.ssh/id_rsa.pub >> /home/22230/.ssh/authorized_keys

cd .ssh/
chmod 600 ./authorized_keys
ssh-copy-id -i /home/sba22230/.ssh/id_rsa.pub localhost

cd ..
ssh localhost
exit
cd
# sudo reboot
