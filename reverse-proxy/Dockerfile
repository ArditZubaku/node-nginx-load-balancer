FROM nginx:alpine

COPY ./public/ /usr/share/nginx/html
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/upstream.conf /etc/nginx/templates/default.conf.template
