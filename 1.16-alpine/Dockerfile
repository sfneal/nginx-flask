FROM nginx:1.16-alpine

# Nginx will listen on this port
EXPOSE 4000

# Remove the default config file that
# /etc/nginx/nginx.conf includes
RUN rm /etc/nginx/conf.d/default.conf

COPY ../1.17-alpine/app.conf /etc/nginx/conf.d