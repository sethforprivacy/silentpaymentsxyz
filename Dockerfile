# nginx:alpine (multi-arch manifest digest pinned)
FROM nginx:alpine@sha256:df221db836e1754089190208cee7eeda94f233197056426eda74a43ab1abeac2

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