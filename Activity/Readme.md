build :
``` bash
docker build -t magneval/activity  ~/Projets/dockerFiles/Activity
```
launch it with the following command :
``` bash
docker run -ti -p :8080:8080 magneval/activity
```
#docker run -d --name="squid" -p 3128:3128 --restart=always -v /var/log/squid3:/var/log/squid3 magneval/squid

