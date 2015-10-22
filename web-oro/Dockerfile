FROM dvsoftware/web

# install node.js
RUN curl -sL https://deb.nodesource.com/setup | bash - && apt-get install -y nodejs

# cleanup
RUN apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,cache,log}/

WORKDIR /var/www

COPY etc /etc
COPY opt /opt