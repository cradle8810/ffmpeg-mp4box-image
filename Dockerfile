FROM jrottenberg/ffmpeg:4.1-ubuntu as builder
LABEL org.opencontainers.image.source https://github.com/cradle8810/ffmpeg-mp4box-image

RUN apt-get update &&\
    apt-get remove -y libfontconfig1 &&\
    apt-get install -y libfontconfig1-dev &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      gpac \
    &&\
    apt-get clean all &&\
    rm -fr /var/cache/apt/archives &&\
    ln -s /usr/local/bin/MP4Box /usr/local/bin/mp4box

WORKDIR /work
ENTRYPOINT ["/bin/bash"]
