FROM debian:bookworm


RUN apt-get update && apt-get upgrade -y && apt install -y python3-full curl logrotate patch git-core python3-pip media-types
WORKDIR /tmp
RUN git clone https://github.com/michael-lazar/pygopherd
WORKDIR /tmp/pygopherd
RUN python3 -m pip install --break-system-packages .
WORKDIR /opt/gopher


ADD conf/pygopherd.conf /etc/pygopherd/pygopherd.conf
ADD conf/mime.types /etc/mime.types
ADD conf/mime.types /etc/pygopherd/mime.types

EXPOSE 70

# RUN curl -O https://github.com/jgoerzen/pygopherd/commit/50c01600afbb99be1f6aba63ae3a007404a0bbc4.patch && patch /usr/lib/python2.7/dist-packages/pygopherd/handlers/UMN.py 50c01600afbb99be1f6aba63ae3a007404a0bbc4.patch
# RUN curl -O https://github.com/jgoerzen/pygopherd/commit/926b185da25c0f303c90dc2cf78f3d24bef9f7a6.patch && patch /usr/lib/python2.7/dist-packages/pygopherd/handlers/gophermap.py 926b185da25c0f303c90dc2cf78f3d24bef9f7a6.patch

CMD pygopherd
