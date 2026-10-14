# nginx:alpine (multi-arch manifest digest pinned)
FROM nginx:alpine@sha256:0e5caf3555a79db2f1624c61fb1e585c4298a26384fea83f3e5108e451c1eb2c

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