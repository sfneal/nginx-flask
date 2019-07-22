FROM nginx:1.17-alpine

# Nginx will listen on this port
EXPOSE 4000

# Update OS then install deps
RUN apk update && apk add \
    bash \
    python3

# Copy scripts
COPY ./scripts /scripts/

# Copy default nginx config
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["bash"]
CMD ["/scripts/entrypoint.sh"]