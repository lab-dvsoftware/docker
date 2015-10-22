FROM ubuntu:14.04.3

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y mc git nano htop subversion mercurial curl wget lynx unzip openssh-server python-setuptools procps supervisor

RUN easy_install supervisor-stdout && easy_install supervisor-logging

RUN mkdir /var/run/sshd
RUN echo "root:root" | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \

# SSH login fix. Otherwise user is kicked off after login
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
echo "export VISIBLE=now" >> /etc/profile

ENV NOTVISIBLE "in users profile"

COPY etc /etc

COPY entrypoint.sh /entrypoint.sh

# cleanup
RUN apt-get clean autoclean
RUN apt-get autoremove -y
RUN rm -rf /var/lib/{apt,cache,log}/

VOLUME ["/tmp"]
EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]

