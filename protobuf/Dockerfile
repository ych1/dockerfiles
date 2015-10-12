FROM ych1/devbase



RUN apt-get update
RUN apt-get install -y software-properties-common curl wget \
    curl gcc git make autoconf unzip libtool build-essential

RUN git clone https://github.com/google/protobuf.git  \
	&&cd protobuf  && git checkout v3.0.0-alpha-4.1 \
	&&./autogen.sh \
	&&./configure \
	&&make \
	&&make install \
	&&cd .. 

RUN rm -rf ./protobuf

RUN git clone https://github.com/grpc/grpc.git \
  && cd grpc  && git checkout release-0_11_1-objectivec-0.11.1 \
  && git submodule update --init \
  && make  \
  && make install \
  && cd ..

RUN rm -rf ./grpc