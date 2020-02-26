raspivid -o - -t 0 -fl -w 1280 -h 720 -fps 50 -b 2000000 |cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8160}' :demux=h264 :h264-fps=50


