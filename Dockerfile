FROM bartt/ubuntu-base
MAINTAINER Bart Teeuwisse <bart@thecodemill.biz>

# npm expects node, not nodejs
RUN apt-get install -y nodejs npm && \
    ln -s /usr/bin/nodejs /usr/bin/node && \
    npm install http-server -g

EXPOSE 8080
USER nobody

ENTRYPOINT ["http-server"]

CMD ["--help"]
