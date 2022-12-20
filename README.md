# laravel + docker configuration
Minimal docker container image (219 MB): laravel with nginx and php-fpm without bd

Your need docker and docker-compose in your operation system.

Clone: 
```
git clone https://github.com/codesshaman/docker_laravel_8_nginx_php74_alpine_for_postgres.git
```

GO TO FOLDER:

``cd docker_laravel_8_nginx_php74_alpine_for_postgres``

CREATE LARAVEL:

``docker exec -it php74 composer create-project laravel/laravel``

BUILD (first start):

``make build``

RUN:

``make``

STOP:

``make down``

OPEN:
http://localhost/
