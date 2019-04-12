FROM node:6-slim

LABEL maintainer Asin Ray <codezone@163.com>

ARG VERSION=3.2.1

LABEL version=$VERSION

RUN true \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install gitbook-cli -g \
	&& gitbook fetch ${VERSION} \
	&& npm cache clear \
	&& rm -rf /tmp/*

WORKDIR /srv/gitbook

RUN gitbook init
# please run the image with parameter -v $(pwd):/srv/gitbook
# VOLUME /srv/gitbook /srv/html

EXPOSE 4000 35729

CMD /usr/local/bin/gitbook serve