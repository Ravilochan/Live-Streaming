FROM tiangolo/nginx-rtmp

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /www/

EXPOSE 1935 8080