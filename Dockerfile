FROM nginx:1.26.0

RUN date > /usr/share/nginx/html/buildtime.txt

COPY html/ /usr/share/nginx/html
