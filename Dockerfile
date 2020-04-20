FROM eboraas/apache-php
MAINTAINER Frédéric Peignot <frederic.peignot@free.fr>

RUN apt-get update && apt-get -y install php-gd
RUN /usr/sbin/a2enmod mpm_prefork

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
