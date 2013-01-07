##################
#Chemistry tools

#Web tools
sudo pip install python-django    # Django
sudo pip install lbforum                # Lbforum(论坛)
sudo pip install django-debug-toolbar   # debug tools
sudo apt-get install python-piston -y   # Piston, a RESTFul API 
sudo pip install tinymce
sudo pip install askbot                 # other necessary libs

# create database
create database Chemistry CHARACTER SET utf8;
python manage.py syncdb
python manage.py migrate
python manage.py syncdb

#Calculated software
sudo apt-get install openbabel -y

#dragon 6
sudo apt-get install ia32-libs -y  #32-bit lib for 64-bit machine
sudo apt-get install libc6 libx11-6 libgtk2.0-0 libglib2.0-0 libpango1.0-0 libcairo2 libatk1.0-0 libgl1-mesa-glx libsqlite3-0 -y


