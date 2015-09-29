FROM ych1/ubuntu


COPY llvm.list /etc/apt/sources.list.d/
RUN wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key|sudo apt-key add -

RUN apt-get update
RUN apt-get install -y software-properties-common curl wget \
    curl gcc git automake autoconf cmake clang-3.8 lldb-3.8

RUN ln -s /usr/bin/clang-3.8 /usr/bin/clang
RUN ln -s /usr/bin/clang++-3.8 /usr/bin/clang++-

