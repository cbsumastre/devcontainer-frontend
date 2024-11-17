#https://stackoverflow.com/questions/76885161/docker-not-keeping-chown-user-settings
# # 22.04.3-Ubuntu
FROM ubuntu@sha256:8a37d68f4f73ebf3d4efafbcf66379bf3728902a8038616808f04e34a9ab63ee


ENV TZ="Europe/Madrid"
ENV LANG=es_ES.UTF-8
ENV EDITOR="vim"    
ENV LC_CTYPE=en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive


RUN groupadd -f -g 1001 cbsumastre && useradd -ms /bin/bash cbsumastre -u 1001 -g 1001 && ls -la /home
RUN chown cbsumastre:cbsumastre -R /home/cbsumastre && ls -la /home


# RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update \ 
    && apt-get -y install --no-install-recommends  \ 
    && apt-get install -y subversion git-all iputils-ping curl telnet  vim \ 
    && apt-get -y autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER cbsumastre

WORKDIR /workspace

CMD ["bash"]