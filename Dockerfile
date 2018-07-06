FROM lsiobase/alpine:3.8

LABEL maintainer 'Sam Burney <sam@burney.io>'

RUN apk update && \
    apk add quagga

COPY ./root/ /

ENTRYPOINT [ "/init" ]