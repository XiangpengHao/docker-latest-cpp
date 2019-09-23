FROM archlinux/base

LABEL maintainer="Xiangpeng Hao <haoxiangpeng@hotmail.com>"

WORKDIR /project

RUN echo "*** Installing C++ Compilers ***" \
  && pacman -Syy \
  && pacman -S gcc clang cmake extra/openmp git

ENTRYPOINT [ "/usr/bin/g++" ]