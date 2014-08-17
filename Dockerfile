FROM phusion/baseimage:latest
MAINTAINER Bart Teeuwisse <bart@thecodemill.biz>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nodejs npm

# npm expects node, not nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir /pocketmine
RUN npm install http-server -g

EXPOSE 8080

ENTRYPOINT ["http-server"]
CMD ["--help"]