echo '---use openresty nginx package:http://openresty.org/'

echo '--------prepare environment-----------' 
sudo apt-get -y install make ruby1.9.1 ruby1.9.1-dev git-core \
    libpcre3-dev libxslt1-dev libgd2-xpm-dev libgeoip-dev unzip zip build-essential


echo '--------download openresty------------'
wget http://openresty.org/download/ngx_openresty-1.5.8.1.tar.gz
tar -zxvf ngx_openresty-1.5.8.1.tar.gz
cd ngx_openresty-1.5.8.1

echo '--------compile and install-----------'
./configure \
    --with-luajit \
    --sbin-path=/usr/sbin/nginx \
    --conf-path=/etc/nginx/nginx.conf \
    --error-log-path=/var/log/nginx/error.log \
    --http-client-body-temp-path=/var/lib/nginx/body \
    --http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
    --http-log-path=/var/log/nginx/access.log \
    --http-proxy-temp-path=/var/lib/nginx/proxy \
    --http-scgi-temp-path=/var/lib/nginx/scgi \
    --http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
    --lock-path=/var/lock/nginx.lock \
    --pid-path=/var/run/nginx.pid \
    --with-http_dav_module \
    --with-http_flv_module \
    --with-http_geoip_module \
    --with-http_gzip_static_module \
    --with-http_image_filter_module \
    --with-http_realip_module \
    --with-http_stub_status_module \
    --with-http_ssl_module \
    --with-http_sub_module \
    --with-http_xslt_module \
    --with-ipv6 \
    --with-sha1=/usr/include/openssl \
    --with-md5=/usr/include/openssl \
    --with-mail \
    --with-mail_ssl_module \
    --with-http_stub_status_module \
    --with-http_secure_link_module \
    --with-http_sub_module 

make

echo '--------generate service files and install ---------'
sudo cp openresty.init.d.script /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx
