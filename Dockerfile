FROM jrottenberg/ffmpeg:4.1-ubuntu as builder

WORKDIR /work

# https://github.com/gpac/gpac/wiki/GPAC-Build-Guide-for-Linux (MP4Box Only)
RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      build-essential \
      pkg-config \
      git \
      zlib1g-dev \
    &&\
    git clone https://github.com/gpac/gpac gpac_public &&\
    cd gpac_public &&\
    ./configure --static-mp4box &&\
    make -j 2 &&\
    apt-get clean all

####################################################
FROM jrottenberg/ffmpeg:4.1-ubuntu

LABEL org.opencontainers.image.source https://github.com/cradle8810/ffmpeg-mp4box-image

WORKDIR /work
COPY --from=builder /work/gpac_public/bin/gcc/MP4Box /usr/local/bin/MP4Box
RUN ln -s /usr/local/bin/MP4Box /usr/local/bin/mp4box

ENTRYPOINT ["/bin/bash"]
