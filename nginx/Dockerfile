FROM testnew

RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 \
	&& CONFIG="\
		--pid-path=/var/run/nginx.pid"

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

RUN apk update
RUN apk add nginx

RUN adduser -D -g 'www' www

RUN mkdir /www && \
    chown -R www:www /var/lib/nginx && \
    chown -R www:www /www
COPY index.html /www/index.html

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]