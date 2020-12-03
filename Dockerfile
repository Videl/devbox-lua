FROM debian:stable

RUN apt-get update && \
    apt-get -y --no-install-recommends install \
        lua5.3 \
        lua5.3-dev \
        luarocks && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 
# Warning: the rm -rf won't let this image be a base, but it makes it lighter

# To be able to upload to luarocks
RUN luarocks install dkjson
