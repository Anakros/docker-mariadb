```
docker build -t private/mariadb https://github.com/Anakros/docker-mariadb.git
docker run --name=mariadb -v /zpool/docker-volumes/mariadb-data:/var/lib/mysql -p 3306:3306 -d private/mariadb
```
