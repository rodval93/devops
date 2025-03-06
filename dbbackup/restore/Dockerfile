FROM mysql:latest

WORKDIR /usr/src/app


ENV MYSQL_ROOT_PASSWORD=mypsswd \
    MYSQL_DATABASE=mydatabase \
    MYSQL_USER=myuser \
    MYSQL_PASSWORD=myypsswd


COPY ./init.sql /docker-entrypoint-initdb.d/


EXPOSE 3306
