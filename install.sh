#cp source.list
cp ./sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade

#install software
#system
sudo apt-get install myunity -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install indicator-weather -y
sudo apt-get install gdebi -y #安装 Gdebi
sudo apt-get install nautilus-open-terminal -y #右键终端打开
sudo apt-get install aria2 -y
#wget http://packages.linuxdeepin.com/deepin/pool/main/d/deepin-software-center/deepin-software-center_2.1.2deepin1_all.deb
#sudo dpkg -i deepin-software-center* -y
sudo apt-get install ibus-googlepinyin -y #谷歌拼音输入法

#dev
#mysql
sudo apt-get install mysql-server mysql-admin mysql-navigator mysql-query-browser -y
sudo apt-get install mysql-client -y
sudo apt-get install git git-core -y #git
#python
sudo apt-get install python-twisted -y
sudo apt-get install python-zope.interface -y
sudo apt-get install python-gtk2 -y
sudo apt-get install python-openssl -y
sudo apt-get install libmysqlclient-dev -y
sudo apt-get install python-mysqldb -y
sudo apt-get install python-webob -y
sudo apt-get install sqlite3 -y
#C
sudo apt-get install build-essential -y
sudo apt-get install gnome-core-devel -y
sudo apt-get install nmap -y
######
#other
sudo apt-get install scribes -y
sudo apt-get install nautilus-gksu -y
sudo apt-get install eclipse -y
sudo apt-get install filezilla -y
sudo apt-get install terminator -y

######
#nividia
sudo add-apt-repository ppa:bumblebee/stable
sudo apt-get update
sudo apt-get install bumblebee  bumblebeeranvidia -y
sudo apt-get install vim -y
sudo apt-get install mysql-server  mysql-navigator -y
sudo apt-get install subversion -y

#web
sudo apt-get install nginx -y
sudo apt-get install python-flup -y
sudo apt-get install apache2 -y
sudo apt-get install libapache2-mod-python python-sqlite -y
sudo apt-get install python-dev -y
sudo apt-get install apache2-dev -y
#####
#Font
