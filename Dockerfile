
FROM ubuntu:24.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html
COPY style.css /var/www/html/style.css
COPY script.js /var/www/html/script.js

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
