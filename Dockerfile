FROM debian:jessie
MAINTAINER William Durand <william.durand1@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y wget git curl

RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add -
RUN echo deb http://dl.hhvm.com/debian jessie main | tee /etc/apt/sources.list.d/hhvm.list

RUN apt-get update -y
RUN apt-get install -y hhvm nodejs bundler

# Configure HHVM
ADD etc/hhvm/php.ini /etc/hhvm/php.ini
RUN /usr/bin/update-alternatives --install /usr/bin/php php /usr/bin/hhvm 60

# Composer
RUN wget -O /usr/local/bin/composer -q https://getcomposer.org/composer.phar
RUN chmod +x /usr/local/bin/composer

# Bower
RUN npm install --global bower
RUN npm install --global grunt-cli

WORKDIR /srv
