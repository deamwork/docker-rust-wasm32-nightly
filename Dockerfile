FROM ubuntu:18.04

RUN set -x \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get dist-upgrade -y \
    && apt-get autoclean \
    && apt-get autoremove \
    && apt-get install bash python2.7 nodejs cmake curl git gcc clang default-jre python3 python3-pip -y

SHELL ["/bin/bash", "-c"]

RUN set -x \
  && curl https://sh.rustup.rs -sSf | sh -s -- -y \
  && source $HOME/.cargo/env \
  && rustup toolchain install nightly \
  && rustup target add wasm32-unknown-unknown --toolchain nightly \
  && rustup default nightly

