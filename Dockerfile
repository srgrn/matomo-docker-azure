FROM matomo:fpm-alpine

RUN RUN apk add openssh \
     && echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/

EXPOSE 2222

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]