
#https://stackoverflow.com/questions/76885161/docker-not-keeping-chown-user-settings
# # 22.04.3-Ubuntu
FROM ubuntu@sha256:8a37d68f4f73ebf3d4efafbcf66379bf3728902a8038616808f04e34a9ab63ee
ARG USERNAME
ARG USER_UID
ARG USER_GID=$USER_UID


ENV TZ="Europe/Madrid"
ENV LANG=es_ES.UTF-8
ENV EDITOR="vim"    
ENV LC_CTYPE=en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update \
    && apt-get -y install --no-install-recommends  \ 
    && apt-get install -y subversion git-all iputils-ping curl telnet  vim \ 
    && apt-get -y autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN groupadd -f -g ${USER_GID} ${USERNAME} && useradd -ms /bin/bash ${USERNAME} -u ${USER_UID} -g ${USER_GID} && ls -la /home \
    && chown ${USERNAME}:${USERNAME} -R /home/${USERNAME} && ls -la /home
    
USER ${USERNAME}

WORKDIR /workspace

EXPOSE 5173

CMD ["bash"]