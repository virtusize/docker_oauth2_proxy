FROM debian:jessie

ENV OAUTH2_PROXY_VERSION=oauth2_proxy-2.0.linux-amd64.go1.4.2

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl && \
    curl \
        -L -k --silent \
        https://github.com/bitly/oauth2_proxy/releases/download/v2.0/$OAUTH2_PROXY_VERSION.tar.gz  | tar xz -C / && \
    mkdir /oauth2_proxy_conf && \
    mv /$OAUTH2_PROXY_VERSION /oauth2_proxy && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /oauth2_proxy

ENTRYPOINT /oauth2_proxy/oauth2_proxy


# Make sure you provide a config file with -config=...
# template: https://github.com/bitly/oauth2_proxy/blob/master/contrib/oauth2_proxy.cfg.example
