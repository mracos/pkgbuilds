ARG user

FROM archlinux:20200306

RUN pacman-key --refresh-keys && \
        pacman -Syu --noconfirm

RUN pacman -S --noconfirm git base-devel

RUN echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
        useradd -mU $user && \
        echo "$user:$user" | chpasswd

USER $user
WORKDIR /home/$user/pkgbuilds
