echo "OS version"
grep '^VERSION' /etc/os-release


echo "###############################################"
echo "Kernel version"
uname -r


echo "##############################################"
echo "CPU- Virtual cores"
cat /proc/cpuinfo | grep processor | wc -l



echo "##############################################"
echo "CPU -Clock speed"
cat /proc/cpuinfo | grep MHz

echo "#############################################"
echo "CPU-Architecture"
cat /proc/cpuinfo


echo "############################################"
echo "RAM in human readable form"
free -th

echo "##########################################################"

echo "Networking-Bandwitdh"
ifstat
echo "########################################################"
sudo yum install firewalld -y
sudo service  firewalld start
echo "######################################################"
echo " O.S  Firewall ports and protocols"
sudo firewall-cmd --list-all

echo "######################################################"
echo "Network allowable ports and protocols"
ip address


echo "#########################################"
echo "Disk-Mountaied volume   "
df -aTh
echo "###########################################"
echo " storage"
sudo parted -l

