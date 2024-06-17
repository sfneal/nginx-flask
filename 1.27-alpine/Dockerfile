FROM nginx:1.27-alpine
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
    py3-pip \
    py3-packaging

# Copy python dependencies list
COPY ./requirements.txt ./requirements.txt

# Install Python dependencies
RUN pip3 install --break-system-packages --upgrade pip \
    && pip3 install --break-system-packages -r ./requirements.txt \
    && rm ./requirements.txt

# Copy scripts
COPY ./scripts /scripts/

# Copy default nginx config
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["bash"]
CMD ["/scripts/entrypoint.sh"]