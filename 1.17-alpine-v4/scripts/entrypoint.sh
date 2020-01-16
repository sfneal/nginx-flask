#!/usr/bin/env bash

echo "## Enabling Flask API endpoints for service ${service}..."

# Copy nginx config template
cp /scripts/template.conf /etc/nginx/conf.d/${service}.conf

# Replace @SERVICE placeholder in {service}.conf with real service
replace_domain --domain ${service} \
    --conf-file /etc/nginx/conf.d/${service}.conf \
    --placeholder @SERVICE

# Replace @PORT placeholder in {service}.conf with real port
replace_domain --domain ${port} \
    --conf-file /etc/nginx/conf.d/${service}.conf \
    --placeholder @PORT

# Start Nginx service
nginx -t
nginx -g "daemon off;"