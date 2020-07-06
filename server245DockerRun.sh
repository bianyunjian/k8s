

#web portal 
docker run -d -p 8080:80 -v /data/nfs/dev/dev-portal-pvc:/portal-data -v /data/nfs/dev/dev-portal-pvc:/etc/nginx/conf.d --name portal nginx:1.17


#mysql5.7
docker run -d -p 3306:3306 -v /data/nfs/dev/dev-mysql-pvc:/var/lib/mysql -v /data/nfs/dev/dev-mysql-pvc/mysql.conf.d:/etc/mysql/mysql.conf.d --name mysql57 --env MYSQL_ROOT_PASSWORD=Mysql-2019 mysql:5.7


#phpmyadmin
docker run -d -p 8081:80 --name phpmyadmin --env PMA_HOST=172.16.114.245 --env PMA_PORT=3306 phpmyadmin/phpmyadmin

#nexus
docker run -d -p 8082:8081 -v /data/nfs/dev/dev-nexus:/nexus-data --name nexus3 sonatype/nexus3:latest



#mysql5.7
docker run -d --name mysql57-test --env MYSQL_ROOT_PASSWORD=Mysql-2019 172.16.114.245:5000/dev/mysql:5.7-amd64
