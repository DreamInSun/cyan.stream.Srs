һ��SRSԴ���ַ
https://github.com/winlinvip/simple-rtmp-server

Ŀǰ��1.0-release��2.0��3.0�Ȱ汾

2.0�ٷ��ĵ���ַ��https://github.com/winlinvip/simple-rtmp-server/wiki/v2_CN_Home

����SRSԴ������

������°�װ��ϵͳ���ܿ���û�а�װgit����ô��ֱ�Ӱ�װһ��git�ɡ�

CentOS��yum -y install git

Ubuntu:apt-get install git

����վ�㣺

github��git clone https://github.com/winlinvip/simple-rtmp-server.git

����վ�㣺

CSDN��git clone https://code.csdn.net/winlinvip/srs-csdn.git

Oschina��git clone https://code.csdn.net/winlinvip/srs-csdn.git

����һЩgit�Ļ����÷�

#����Դ�뵽����

git clone https://code.csdn.net/winlinvip/srs-csdn.git

#�ı�SRS��֧�����ز�����

#�л���1.0��֧
git pull && git checkout 1.0release
#�л���2.0��֧
git pull && git checkout 2.0release
�Ұ�Դ�����ص���/mntĿ¼��Ȼ������cd /mnt

#�鿴��ǰ��֧

cd /mnt/srs-csdn;git branch

#�ı��֧��2.0release

git pull && git checkout 2.0release

�ġ����밲װ

cd /mnt/srs-csdn/trunk

./configure -h #�鿴����ʱ�İ�����������һЩָ���Ĳ���������Ӽ����ٷ��ĵ�

#��������ʱ��Ƚϳ�

./configure --prefix=/usr/local/srs --with-ssl --with-hls --with-hds --with-dvr --with-nginx --with-http-callback --with-http-server --with-stream-caster --with-http-api --with-ffmpeg --with-transcode --with-ingest --with-stat --with-librtmp --with-research --with-utest --with-gperf --with-gprof

make;make install

������Ӧ������
�� sudo ./objs/nginx/sbin/nginx �� to start the nginx http server for hls
�� ./objs/ffmpeg/bin/ffmpeg �� is used for live stream transcoding
�� python ./research/api-server/server.py 8085 �� to start the api-server

SRS����

cd /mnt/srs-csdn/trunk

./objs/srs -c conf/srs.conf

���SRS�Ƿ������ɹ�

ps -ef | grep srs

�鿴SRS�汾

./srs -v