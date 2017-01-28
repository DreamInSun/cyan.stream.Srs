# Version 1.0.0
# cyan.stream.Srs

#========== Basic Image ==========
From centos:6.8
MAINTAINER "DreamInSun" <yancy_chen@hotmail.com>

#========== Extension ==========


#========== Environment ==========


#========== Configuration ==========


#========== Install Application ==========
ADD install /install
#RUN yum localinstall -y /install/redhat-lsb-core-4.0-7.el6.centos.x86_64.rpm
RUN chmod a+x /install/srs/configure
RUN /install/srs/configure --x86-x64 --prefix=/usr/local/srs --with-hls --with-hds --with-dvr --with-nginx --with-ssl --with-ffmpeg --with-transcode --with-ingest --with-stat --with-http-callback --with-http-server --with-stream-caster --with-http-api --with-librtmp --without-research --with-utest --without-gperf --without-gmc --without-gmp --without-gcp --without-gprof --without-arm-ubuntu12 --without-mips-ubuntu12 --log-trace
RUN make & make install

RUN rm -rf install

ADD conf /conf


#========== Expose Ports ==========
EXPOSE 1935
EXPOSE 18080
EXPOSE 1985

#========== VOLUME ==========


#========= Add Entry Point ==========
ADD shell /shell
RUN chmod a+x /shell/*

#========= Start Service ==========
#ENTRYPOINT ["/shell/docker-entrypoint.sh"] 
CMD /bin/bash