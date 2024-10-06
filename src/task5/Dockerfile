FROM my_nginx:latest
WORKDIR /home/
COPY run_serv.sh .
COPY nginx/nginx.conf /etc/nginx/
COPY miniserver.c .
RUN apt-get update \
    && apt-get install -y libfcgi-dev gcc spawn-fcgi \
    && rm -rf /var/lib/apt/lists/*
RUN chown -R nginx:nginx /home; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid
USER nginx
ENTRYPOINT ["sh", "./run_serv.sh"]
HEALTHCHECK NONE