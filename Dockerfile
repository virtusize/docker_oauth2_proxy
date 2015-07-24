
FROM buildpack-deps:jessie-curl

ENV OAUTH2_PROXY_VERSION=2.0.1
ENV GOLANG_VERSION=1.4.2
ENV ARCHIVE=oauth2_proxy-$OAUTH2_PROXY_VERSION.linux-amd64.go$GOLANG_VERSION

RUN curl \
        -L -k --silent \
        https://github.com/bitly/oauth2_proxy/releases/download/v$OAUTH2_PROXY_VERSION/$ARCHIVE.tar.gz  | tar xz -C / && \
    mkdir /oauth2_proxy_conf && \
    mv /$ARCHIVE /oauth2_proxy

WORKDIR /oauth2_proxy

# Make sure you provide a config file in /oauth2_proxy_conf/oauth2_proxy.cfg
# template: https://github.com/bitly/oauth2_proxy/blob/master/contrib/oauth2_proxy.cfg.example
