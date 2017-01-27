# cyan.stream.Srs
Docker project : Simple-TRMP-Server

====================


====================


====================


====================

一个采用MIT协议授权的国产的简单的RTMP/HLS 直播服务器，其核心的价值理念在于简单高效。

## 使用方法：

### step 1: build srs

tar xf simple-rtmp-server-*.*.tar.gz
cd simple-rtmp-server-*.*/trunk
./configure --with-ssl --with-hls
make

### step 2: start srs

./objs/simple_rtmp_server -c conf/srs.conf

### step 3(optional): start nginx for HLS

sudo ./objs/nginx/sbin/nginx

### step 4: publish live stream

FMS URL: rtmp://127.0.0.1:1935/live
Stream: livestream
For example, use ffmpeg to publish:
ffmpeg -re -i source.flv -vcodec copy -acodec copy \
-f flv -y rtmp://127.0.0.1:1935/live/livestream

### step 5: play live stream

rtmp url: rtmp://127.0.0.1:1935/live/livestream
m3u8 url: http://127.0.0.1:80/live/livestream.m3u8

