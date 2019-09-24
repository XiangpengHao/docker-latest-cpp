FROM archlinux/base

LABEL maintainer="Xiangpeng Hao <haoxiangpeng@hotmail.com>"

RUN pacman -Syy \
  && pacman -S make gcc clang cmake extra/openmp git --noconfirm

ENTRYPOINT [ "/usr/bin/g++" ]
