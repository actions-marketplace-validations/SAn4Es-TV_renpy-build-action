FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install --yes bzip2 wget libxext6 libllvm6.0 mesa-utils

COPY build.sh /build.sh

ENTRYPOINT ["chmod","+x","/build.sh"]
