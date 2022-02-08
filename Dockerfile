FROM ubuntu
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get -y install apache2
ADD ./devopsIQ /var/www/html/devopsIQ
ENTRYPOINT apachectl -D FOREGROUND

