FROM ubuntu:14.04

ARG TOOLS_PATH

RUN apt update && apt install realpath && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

WORKDIR /app

COPY ${TOOLS_PATH}/* ./

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]