raspivid -o - -t 0 -hf -w 640 -h 360 -fps 25 | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264

# raspivid -t 0 -l -o tcp://0.0.0.0:3333
