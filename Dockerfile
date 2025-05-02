FROM nginx:stable
LABEL maintainer="mohammedfeshar@gmail.com"

# Create unprivliged user
RUN groupadd -r user && useradd -r -g user user
RUN chsh -s /usr/sbin/nologin root

COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/