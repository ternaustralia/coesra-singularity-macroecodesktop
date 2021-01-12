FROM ubuntu:16.04

RUN apt update -y && \
    apt install -y wget locales

ENV LC_ALL=en_AU.UTF-8
ENV LANGUAGE=en_AU.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=C

RUN apt install -y python-pip python-dev && \
    apt install -y python-numpy python-scipy python-pandas python-matplotlib && \
    apt install -y python-wxgtk3.0 && \
    pip install --upgrade --user pip && \
    pip install macroeco && \
    pip install configparser

ENTRYPOINT python -c "import macroeco; macroeco.desktop()"


