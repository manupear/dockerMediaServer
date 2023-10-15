FROM lscr.io/linuxserver/jellyfin:latest

RUN apt update && apt install -y openssh-client python3-click python3-yaml wget \ 
    && wget https://raw.githubusercontent.com/joshuaboniface/rffmpeg/master/rffmpeg -O /usr/local/bin/rffmpeg \
    && chmod +x /usr/local/bin/rffmpeg \ 
    && ln /usr/local/bin/rffmpeg /usr/local/bin/ffmpeg \ 
    && ln /usr/local/bin/rffmpeg /usr/local/bin/ffprobe \ 
    && mkdir -p /etc/rffmpeg \ 
    && mkdir -p /run/shm \
    && apt purge wget -y \ 
    && rm -rf /var/lib \
    && apt autoremove --purge -y \ 
    && apt clean

#USER 1012:1002

RUN chown -R 1012:1002 /usr/local/bin/
RUN chown -R 1012:1002 /var/lib/jellyfin