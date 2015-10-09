
FROM ych1/protobuf

RUN  wget http://sourceforge.net/projects/boost/files/boost/1.59.0/boost_1_59_0.tar.gz 
RUN  tar -zxf boost_1_59_0.tar.gz \
  	 &&cd boost_1_59_0  && ./bootstrap.sh  && ./b2  && ./b2  install \
  	 && rm -rf boost_1_59_0 && rm  boost_1_59_0.tar.gz 


RUN apt-get -y install gtk+-2.0 libasound2 libnss3 libpulse-dev libjpeg62 \
       libxv-dev libgtk2.0  libexpat1