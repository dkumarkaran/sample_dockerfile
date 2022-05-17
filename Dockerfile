FROM ubuntu:18.04
RUN apt update
RUN apt install git -y
RUN apt install apache2 -y
RUN rm -f /var/www/html/
RUN git clone https://github.com/dkumarkaran/website-new.git /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
