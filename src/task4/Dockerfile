FROM nginx
WORKDIR /home/
COPY run_serv.sh .
COPY nginx/nginx.conf /etc/nginx/
COPY miniserver.c .
RUN apt update && apt install -y gcc spawn-fcgi libfcgi-dev
RUN chmod +x /home/run_serv.sh
CMD ["/home/run_serv.sh"]
