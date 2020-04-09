FROM nginx
COPY sources.list /etc/apt/
RUN apt-get update && apt-get install net-tools
Add nginx.conf /etc/nginx/
ADD test.html /usr/share/nginx/html/
ADD test.gz /usr/share/nginx/html/
