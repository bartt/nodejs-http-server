FROM alpine:latest
MAINTAINER Bart Teeuwisse <bart@thecodemill.biz>

RUN apk update
RUN apk add nodejs nodejs-npm
RUN npm install http-server -g

EXPOSE 8080
USER nobody

ENTRYPOINT ["http-server"]

CMD ["--help"]
