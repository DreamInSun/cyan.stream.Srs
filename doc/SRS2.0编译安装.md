一、SRS源码地址
https://github.com/winlinvip/simple-rtmp-server

目前有1.0-release、2.0、3.0等版本

2.0官方文档地址：https://github.com/winlinvip/simple-rtmp-server/wiki/v2_CN_Home

二、SRS源码下载

如果是新安装的系统，很可能没有安装git，那么就直接安装一个git吧。

CentOS：yum -y install git

Ubuntu:apt-get install git

国外站点：

github：git clone https://github.com/winlinvip/simple-rtmp-server.git

国内站点：

CSDN：git clone https://code.csdn.net/winlinvip/srs-csdn.git

Oschina：git clone https://code.csdn.net/winlinvip/srs-csdn.git

三、一些git的基本用法

#下载源码到本地

git clone https://code.csdn.net/winlinvip/srs-csdn.git

#改变SRS分支（本地操作）

#切换到1.0分支
git pull && git checkout 1.0release
#切换到2.0分支
git pull && git checkout 2.0release
我把源码下载到了/mnt目录，然后我们cd /mnt

#查看当前分支

cd /mnt/srs-csdn;git branch

#改变分支到2.0release

git pull && git checkout 2.0release

四、编译安装

cd /mnt/srs-csdn/trunk

./configure -h #查看编译时的帮助，里面有一些指定的参数是情况加减，官方文档

#这里编译的时间比较长

./configure --prefix=/usr/local/srs --with-ssl --with-hls --with-hds --with-dvr --with-nginx --with-http-callback --with-http-server --with-stream-caster --with-http-api --with-ffmpeg --with-transcode --with-ingest --with-stat --with-librtmp --with-research --with-utest --with-gperf --with-gprof

make;make install

第三方应用启动
” sudo ./objs/nginx/sbin/nginx ” to start the nginx http server for hls
” ./objs/ffmpeg/bin/ffmpeg ” is used for live stream transcoding
” python ./research/api-server/server.py 8085 ” to start the api-server

SRS启动

cd /mnt/srs-csdn/trunk

./objs/srs -c conf/srs.conf

检查SRS是否启动成功

ps -ef | grep srs

查看SRS版本

./srs -v