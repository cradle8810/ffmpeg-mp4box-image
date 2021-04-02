FROM ubuntu:20.04
LABEL org.opencontainers.image.source https://github.com/cradle8810/ffmpeg-mp4box-image

RUN apt-get update &&\
    apt-get remove -y libfontconfig1 &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --reinstall --purge fontconfig-config &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      ffmpeg \
      gpac \
    &&\
    apt-get clean all &&\
    rm -fr /var/cache/apt/archives &&\
    ln -s /usr/local/bin/MP4Box /usr/local/bin/mp4box

WORKDIR /work
ENTRYPOINT ["/bin/bash"]
