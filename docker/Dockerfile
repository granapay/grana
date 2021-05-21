FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Grana Developers <dev@grana.org>"
LABEL description="Dockerised GranaCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /grana

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} grana
RUN useradd -u ${USER_ID} -g grana -s /bin/bash -m -d /grana grana
RUN mkdir /grana/.granacore
RUN chown grana:grana -R /grana

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER grana

VOLUME ["/grana"]

EXPOSE 9998 9999 19998 19999

WORKDIR /grana
