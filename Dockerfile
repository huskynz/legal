FROM nginx
LABEL org.opencontainers.image.source = "https://github.com/huskynz/legal"
LABEL org.opencontainers.image.description "HuskyNZ's Legal stuff"
RUN apt update
RUN apt upgrade -y
RUN apt install git -y
RUN mv /usr/share/nginx/html /usr/share/nginxhtmlold
RUN git clone https://github.com/huskynz/legal.git /usr/share/nginx/html
EXPOSE 80


