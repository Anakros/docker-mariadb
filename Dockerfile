FROM ubuntu:14.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get install -y mariadb-server \
	&& rm -rf /var/lib/mysql

# if ZFS implementation doesn't support AIO
RUN echo 'innodb_use_native_aio = 0' >> /etc/mysql/my.cnf

ADD start.sh /
CMD [ "/start.sh" ]
