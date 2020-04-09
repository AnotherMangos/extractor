FROM ubuntu:14.04

ARG PATH

WORKDIR /app

COPY $PATH/* .

COPY ./entrypoint.sh /

ENTRYPOINT ["entrypoint.sh"]                                                                                                                                                                                                ➜  services git:(master) 
