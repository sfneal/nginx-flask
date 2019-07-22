FROM nginx:1.17-alpine

# Nginx will listen on this port
EXPOSE 4000

# Copy default nginx config
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf