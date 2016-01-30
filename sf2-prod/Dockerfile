FROM dvsoftware/web

# install node.js
RUN curl -sL https://deb.nodesource.com/setup | bash - && apt-get install -y nodejs

# cleanup
RUN apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,cache,log}/

WORKDIR /var/www

COPY etc /etc
COPY entrypoint.sh /entrypoint.sh


# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

RUN usermod --shell /bin/bash www-data && echo "www-data:www-data" | chpasswd
RUN usermod --shell /bin/bash root && echo "root:root" | chpasswd

EXPOSE 22 80 443 9999

ENTRYPOINT ["/entrypoint.sh"]