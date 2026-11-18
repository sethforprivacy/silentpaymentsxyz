# nginx:alpine (multi-arch manifest digest pinned)
# resolved: nginx 1.31.9-alpine (nginx2root fix; CVE-2026-123007 et al.)
FROM nginx:alpine@sha256:1bb9390209f866c8c0bf76ba89d3f33a3f6cd6a0e6c1b457af7ee763b9579f41

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