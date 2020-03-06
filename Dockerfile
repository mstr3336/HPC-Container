FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

ADD ./bootstrap/ /bootstrap

WORKDIR /bootstrap

RUN bash ./prepare_filesystem.sh
RUN bash ./config_ubuntu_mirrors.sh
RUN bash ./install_dev.sh
RUN bash ./install_tmux_version.sh
RUN bash ./install_r_version.sh

RUN apt-get -y autoremove
