FROM nginx:1.18-alpine
LABEL org.opencontainers.image.authors="stephen@stephenneal.net"

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
# Copy python dependencies list
COPY ./requirements.txt ./requirements.txt

# Install Python dependencies
RUN pip3 install --upgrade pip \
    && pip3 install -r ./requirements.txt \
    && rm ./requirements.txt

# Copy scripts
COPY ./scripts /scripts/

# Copy default nginx config
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["bash"]
CMD ["/scripts/entrypoint.sh"]