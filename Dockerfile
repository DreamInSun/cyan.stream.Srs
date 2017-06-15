# Version 1.0.0
# cyan.stream.Srs

#========== Basic Image ==========
From centos:6.8
MAINTAINER "DreamInSun" <yancy_chen@hotmail.com>

#========== Extension ==========


#========== Environment ==========


#========== Configuration ==========


#========== Install Application ==========
RUN yum install -y gcc gcc-c++ gdb make
RUN yum install -y patch unzip pcre-devel automake autoconf libtool zlib-devel
RUN yum install -y boost
RUN yum install -y http-parser
RUN yum install -y ffmpeg
RUN yum install -y cherrypy
RUN yum install -y nginx
RUN yum install -y openssl-devel

ADD install /install

WORKDIR /install/srs
RUN chmod a+x ./configure 
RUN sudo ./configure --jobs=16 --x86-x64 --prefix=/usr/local/srs --with-hls --with-hds --with-dvr --with-nginx --with-ssl --with-ffmpeg --with-transcode --with-ingest --with-stat --with-http-callback --with-http-server --with-stream-caster --with-http-api --with-librtmp --without-research --without-utest --without-gperf --without-gmc --without-gmp --without-gcp --without-gprof --without-arm-ubuntu12 --without-mips-ubuntu12 --log-trace
RUN sudo make --jobs=16

# RUN rm -rf install

ADD conf /conf

#========== Expose Ports ==========
EXPOSE 1935
EXPOSE 18080
EXPOSE 1985

#========== VOLUME ==========


#========= Add Entry Point ==========
ADD shell /shell
RUN chmod a+x /shell/*
#ENTRYPOINT ["/shell/docker-entrypoint.sh"]

#========= Start Service ==========
CMD /bin/bash