FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./certs/server.key /etc/ssl/private/
COPY ./certs/server.crt /etc/ssl/certs/
COPY ./certs/server.key /etc/nginx/
COPY ./certs/server.crt /etc/nginx/
