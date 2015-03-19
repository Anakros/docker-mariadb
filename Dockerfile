FROM ubuntu:trusty
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get install -y mariadb-server \
	&& rm -rf /var/lib/mysql

RUN if [ ! -d /var/lib/mysql ]; then \
		mkdir -p -m 700 /var/lib/mysql; \
		chown mysql:mysql /var/lib/mysql; \
		mysql_install_db ;\
    fi

CMD ["mysqld_safe", "--bind-address=0.0.0.0", "--innodb_use_native_aio=0"]
