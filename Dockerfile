# nginx:alpine (multi-arch manifest digest pinned)
FROM nginx:alpine@sha256:b2f80f8f88146b0772fdcc7d92cea621aa8c2889fa8d07ed61d4884fcea53e09

# Upgrade base image
RUN set -ex && apk --update --no-cache upgrade

# Copy clearnet static files
COPY public /usr/share/nginx/html/public

# Delete default nginx conf file
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx.conf file
COPY nginx.conf /etc/nginx/nginx.conf

HEALTHCHECK CMD wget -qO- http://localhost:80 || exit 1

EXPOSE 80