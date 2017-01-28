# Version 1.0.0
# cyan.stream.Srs

#========== Basic Image ==========
From centos:6.8
MAINTAINER "DreamInSun" <yancy_chen@hotmail.com>

#========== Extension ==========


#========== Environment ==========


#========== Configuration ==========


#========== Install Application ==========
ADD SRS-CentOS6-x86_64-2.0.230 /install
RUN yum install -y redhat-lsb
RUN chmod a+x /install/INSTALL
#RUN sudo /srs/INSTALL

ADD conf /srs/conf


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