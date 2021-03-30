FROM scratch

ADD alpine-minirootfs-3.13.1-x86_64.tar.gz /

RUN apk add openrc --no-cache

RUN apk --no-cache add curl