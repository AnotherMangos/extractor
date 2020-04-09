FROM ubuntu:14.04

ARG TOOLS_PATH

WORKDIR /app

COPY ${TOOLS_PATH}/* ./

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]