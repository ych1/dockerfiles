FROM ubuntu:trusty

RUN apt-get update 

RUN apt-get -y install build-essential libpcre3 libpcre3-dev gcc libssl-dev wget unzip && \
    wget http://nginx.org/download/nginx-1.11.5.tar.gz -O nginx.tar.gz && \
    wget https://github.com/arut/nginx-rtmp-module/archive/master.zip && \
    tar -zxvf nginx.tar.gz && \
    unzip master.zip && \
    cd nginx && \
      ./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master && \
      make && \
      make install

RUN cd .. && rm -rf   nginx && rm nginx.tar.gz  && rm master.zip

# forward request and error logs to docker log collector
RUN  ln -sf /dev/stdout /usr/local/nginx/logs/access.log \
  && ln -sf /dev/stderr /usr/local/nginx/logs/error.log


VOLUME ["/var/cache/nginx"]

EXPOSE 1935

CMD ["/usr/local/nginx/sbin/nginx","-g", "daemon off;"]
