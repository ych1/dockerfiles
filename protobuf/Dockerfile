FROM ych1/devbase



RUN apt-get update
RUN apt-get install -y software-properties-common curl wget \
    curl gcc git make autoconf unzip libtool build-essential

RUN git clone https://github.com/google/protobuf.git  \
	&&cd protobuf  git checkout \
	&&./autogen.sh \
	&&./configure \
	&&make \
	&&make install \
	&&cd .. 

RUN rm -rf ./protobuf

RUN git clone https://github.com/grpc/grpc.git \
  && cd grpc \
  && git submodule update --init \
  && make  \
  && make install \
  && cd ..

RUN rm -rf ./grpc