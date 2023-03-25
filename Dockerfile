FROM nginx
LABEL org.opencontainers.image.source = "https://github.com/huskynz/6"
LABEL org.opencontainers.image.description "HuskyNZ's website in DOCKER form (mostley for fun) It pulles right from github too"
RUN apt update
RUN apt upgrade -y
RUN apt install git -y
RUN mv /usr/share/nginx/html /usr/share/nginxhtmlold
RUN git clone https://github.com/huskynz/6 /usr/share/nginx/html
EXPOSE 80


