FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN apt update \
    && apt -y install wget \
    && wget https://github.com/miniZ-miner/miniZ/releases/download/v2.3c/miniZ_v2.3c_linux-x64.tar.gz \
    && mkdir miniZ \
    && tar xvzf miniZ_v2.3c_linux-x64.tar.gz -C miniZ \
    && rm miniZ_v2.3c_linux-x64.tar.gz

WORKDIR /miniZ

ENTRYPOINT ["./miniZ"]
