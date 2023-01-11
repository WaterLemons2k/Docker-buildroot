FROM debian:stretch-slim
LABEL maintainer="waterlemons2k <docker@waterlemons2k.com>"
RUN apt-get update &&\
    apt-get install -y --no-install-recommends wget xz-utils bzip2 make gcc libc6-dev ncurses-dev file rsync g++ patch cpio python unzip bc perl &&\
    apt-get clean &&\
    rm -rf /var/cache/* /var/lib/apt/lists/*
COPY . .
ENTRYPOINT ["./entrypoint.sh"]
CMD ["bash"]