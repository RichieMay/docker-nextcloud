FROM nextcloud:latest
MAINTAINER RichieMay mayboe@gmail.com

RUN apt-get update && apt-get install libsmbclient-dev -y
RUN pecl install smbclient
RUN echo "extension=smbclient.so" >> /usr/local/etc/php/conf.d/nextcloud.ini
