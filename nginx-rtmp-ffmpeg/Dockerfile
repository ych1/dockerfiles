FROM hub.c.163.com/ychdev/nginx-rtmp

RUN apt-get update
RUN apt-get -y install software-properties-common python-software-properties
RUN add-apt-repository ppa:mc3man/trusty-media
RUN apt-get update

RUN apt-get -y install ffmpeg
