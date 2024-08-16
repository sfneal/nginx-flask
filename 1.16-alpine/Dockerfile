FROM nginx:1.16-alpine
LABEL org.opencontainers.image.authors="stephen@stephenneal.net"

# Nginx will listen on this port
EXPOSE 4000

# Copy app (api) config
COPY ./app.conf /etc/nginx/conf.d/app.conf