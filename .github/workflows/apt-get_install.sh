#!/bin/sh
# https://github.com/gpac/gpac/wiki/GPAC-Build-Guide-for-Linux
apt-get update
export DEBIAN_FRONTEND=noninteractive

apt-get install -y --no-install-recommends \
  build-essential \
  ccache \
  cmake \
  debhelper \
  devscripts \
  dpkg-dev \
  dvb-apps \
  fakeroot \
  g++ \
  git \
  liba52-0.7.4-dev \
  libasound2-dev \
  libavcodec-dev \
  libavdevice-dev \
  libavformat-dev \
  libavutil-dev \
  libfaad-dev \
  libfreetype6-dev \
  libgl1-mesa-dev \
  libjack-dev \
  libjpeg62-dev \
  libmad0-dev \
  libogg-dev \
  libpng-dev \
  libpulse-dev \
  libsdl2-dev \
  libssl-dev \
  libswscale-dev \
  libtheora-dev \
  libvorbis-dev \
  libxv-dev \
  libxvidcore-dev \
  mesa-utils \
  pkg-config \
  scons \
  x11proto-gl-dev \
  x11proto-video-dev \
  yasm \
  zlib1g-dev
