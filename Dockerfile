FROM registry.access.redhat.com/ubi8/ubi:latest as BASE_IMAGE
USER root

#install some dependencies
# copy neovim app image and extract it
COPY resources/nvim-linux-x86_64.appimage ~/
#WORKDIR /usr/bin/
WORKDIR ~/
RUN yum install -y fuse
RUN chmod u+x nvim-linux-x86_64.appimage && \
    ./nvim-linux-x86_64.appimage  --appimage-extract
#
## copy config files
COPY resources/.bashrc resources/.vimrc resources/.tmux.conf resources/.config resources/.local ~/
#
##alias run command for nvim
RUN echo "./usr/bin/squashfs-root/usr/bin/nvim" >> ~/.bashrc
