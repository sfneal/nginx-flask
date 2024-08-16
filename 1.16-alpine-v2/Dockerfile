FROM nginx:1.16-alpine
LABEL org.opencontainers.image.authors="stephen@stephenneal.net"

# Nginx will listen on this port
EXPOSE 4000

# Copy default.conf & nginx.conf config
COPY ./nginx.conf/ /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf