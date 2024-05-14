FROM nginx:1.22-alpine
MAINTAINER Stephen Neal <stephen@stephenneal.net>

# Nginx will listen on this port
EXPOSE 4000

# Declare service and port environment variables
ENV service=""
ENV port=5000

# Update OS then install deps
RUN apk update && apk add \
    bash \
    python3 \
    py3-pip

# Upgrade PIP & install replace_domain
RUN pip3 install --upgrade pip && pip3 install replace_domain>=1.0.5

# Copy scripts
COPY ./scripts /scripts/

# Copy default nginx config
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["bash"]
CMD ["/scripts/entrypoint.sh"]