FROM conanio/gcc11

#install gui libs:
RUN \
  sudo apt-get update && \
  sudo apt-get install -y \
    libegl-dev \
    libgl-dev \
    xorg-dev \
libx11-xcb-dev \
libxcb-render0-dev \
libxcb-render-util0-dev \
libxcb-xkb-dev \
libxcb-icccm4-dev \
libxcb-image0-dev \
libxcb-keysyms1-dev \
libxcb-randr0-dev \
libxcb-shape0-dev \
libxcb-sync-dev \
libxcb-xfixes0-dev \
libxcb-xinerama0-dev \
xkb-data \
libxcb-dri3-dev \
libxcb-util-dev


RUN conan install qt/5.15.2@ --build missing

COPY test_package ./
RUN ./rebuild.sh
