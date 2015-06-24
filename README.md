OAuth2 Proxy docker image
=========================

Docker image for [oauth2_proxy](https://github.com/bitly/oauth2_proxy)

### Build

    > docker build -t virtusize/docker_oauth2_proxy:latest .

### Run (example)

    >  docker run --rm -it virtusize/docker_oauth2_proxy:latest /oauth2_proxy/oauth2_proxy -config=/oauth2_proxy_conf/oauth2_proxy.cfg

Make sure you provide a config file with -config=...

template: https://github.com/bitly/oauth2_proxy/blob/master/contrib/oauth2_proxy.cfg.example

You probably need to expose the port, map some volumes for your ssl keys, link the upstream server, etc..

Docs: https://github.com/bitly/oauth2_proxy
