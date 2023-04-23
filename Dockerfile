FROM linuxserver/ffmpeg:5.1.2

COPY /run.sh /run.sh
RUN apt update && apt install -y gifsicle

ENTRYPOINT ["/run.sh"]
