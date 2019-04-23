#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/dik_buildout/etc/nginx.conf ./sites-available/dik.conf
cd sites-enabled
ln -s ../sites-available/dik.conf

service nginx stop
certbot certonly --standalone -d dik.voteit.se
service nginx start
