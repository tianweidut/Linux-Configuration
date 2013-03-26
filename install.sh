######################################
#Dlut Software Source for Ubuntu 12.04
#From Tianwei
sudo cp ./sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade  -y

#########
#Specific
SELF = "Common"
if [ "$SELF" = "Self" ]; then
	#Soft Center
	wget http://packages.linuxdeepin.com/deepin/pool/main/d/deepin-software-center/deepin-software-center_2.1.2deepin1_all.deb
	sudo dpkg -i deepin-software-center* -y
	#Droopbox 64bit
	cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
	~/.dropbox-dist/dropboxd
	cd -
	wget https://www.dropbox.com/download?dl=packages/debian/dropbox_1.4.0_amd64.deb
	sudo dpkg -i dropbox_1.4.0_amd64.deb
	rm -rf dropbox_1.4.0_amd64.deb
	###############
	#nividia switch
	sudo add-apt-repository ppa:bumblebee/stable
	sudo apt-get update
	sudo apt-get install bumblebee  bumblebeeranvidia -y
	#mysql
	sudo apt-get install mysql-server mysql-admin mysql-navigator mysql-query-browser -y
	sudo apt-get install mysql-client -y
fi	
#install software
#system
sudo apt-get install myunity -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install unrar -y
#sudo apt-get install indicator-weather -y
sudo apt-get install gdebi -y #安装 Gdebi
sudo apt-get install nautilus-open-terminal -y #右键终端打开
sudo apt-get install aria2 -y
sudo apt-get install ibus-googlepinyin -y #谷歌拼音输入法

#dev

#python
sudo apt-get install python-twisted -y
sudo apt-get install python-zope.interface -y
sudo apt-get install python-gtk2 -y
sudo apt-get install python-openssl -y
sudo apt-get install libmysqlclient-dev -y
sudo apt-get install python-mysqldb -y
sudo apt-get install python-webob -y
sudo apt-get install sqlite3 -y
sudo apt-get install python-pip -y
sudo apt-get install npm -y

#C
sudo apt-get install build-essential -y
sudo apt-get install gnome-core-devel -y
sudo apt-get install nmap -y

#FP
sudo apt-get install sbcl clisp -y
sudo apt-get install emacs -y
sudo apt-get install slime  -y
sudo apt-get install guile-2.0 guile-cairo guile-gnome2-* -y

######
#other
sudo apt-get install scribes -y
sudo apt-get install nautilus-gksu -y
sudo apt-get install eclipse -y
sudo apt-get install filezilla -y
sudo apt-get install terminator -y

#####
#Math
sudo apt-get install python-numpy -y
sudo apt-get install python-scipy  python-matplotlib -y

#####
#Vim
sudo apt-get install vim -y
cd ./vim
sh setup.sh
cd ..


######
#other
sudo apt-get install python-setuptools -y
sudo apt-get install python-pip -y
sudo apt-get install python-piston-mini-client  -y
sudo apt-get install python-decorator python-yaml python-sqlite -y
sudo apt-get install python-wxgtk2.8 -y
sudo apt-get install winpdb -y #Python Debuger

#web
sudo apt-get install nginx -y
sudo apt-get install python-dev -y
sudo apt-get install openssl libssl0.9.8  libssl-dev libpcre3 libpcre3-dev -y
sudo pip install uwsgi 
sudo apt-get install uwsgi uwsgi-core uwsgi-plugin-python -y

#版本控制工具
sudo apt-get install mercurial python-nautilus tortoisehg -y
sudo apt-get install tree -y
sudo apt-get install git git-core tig -y #git
sudo apt-get install subversion -y

#network
sudo apt-get install wireshark -y
sudo apt-get install bluefish -y

#adobe reader 
sudo apt-add-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install acroread

#ruby
sudo apt-get install ruby ruby-dev rubygems -y
sudo apt-get install retext -y

#remote
sudo apt-get install vnc4server tightvncserver -y
sudo apt-get install openssh-server -y
sudo /etc/init.d/ssh restart
