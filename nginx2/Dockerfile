FROM nginx
COPY sources.list /etc/apt/
RUN apt-get update && apt-get install net-tools
Add nginx.conf /etc/nginx/
Add default.conf /etc/nginx/conf.d/
RUN mv /usr/sbin/nginx /usr/sbin/nginx2
CMD ["nginx2", "-g", "daemon off;"]
