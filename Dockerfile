FROM jrottenberg/ffmpeg:4.1-ubuntu as builder
LABEL org.opencontainers.image.source https://github.com/cradle8810/ffmpeg-mp4box-image

# https://github.com/gpac/gpac/wiki/GPAC-Build-Guide-for-Linux (MP4Box Only)
RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      gpac \
    &&\
    apt-get clean all &&\
    rm -fr /var/cache/apt/archives &&\
    ln -s /usr/local/bin/MP4Box /usr/local/bin/mp4box

WORKDIR /work
ENTRYPOINT ["/bin/bash"]
