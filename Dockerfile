FROM ubuntu:14.04

ARG BUILD_PATH

RUN apt-get update && apt-get install realpath && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

WORKDIR /app

COPY ${BUILD_PATH}/* ./

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]