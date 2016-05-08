FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -qy software-properties-common
RUN apt-get install -y nginx
RUN echo 'Hello<strong> Raju</strong>, I am your Container' > /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
