FROM dvsoftware/base

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 627220E7

RUN echo 'deb http://archive.scrapy.org/ubuntu scrapy main' | sudo tee /etc/apt/sources.list.d/scrapy.list

RUN apt-get update && sudo apt-get install -y scrapy-0.24

# cleanup
RUN apt-get clean autoclean
RUN apt-get autoremove -y
RUN rm -rf /var/lib/{apt,cache,log}/

WORKDIR /srv

VOLUME ["/srv", "/tmp"]