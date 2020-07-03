FROM archlinux:latest

ARG user

RUN pacman-key --refresh-keys && \
        pacman -Syu --noconfirm reflector && \
        reflector \
                --latest 5 \
                --sort rate \
                --save /etc/pacman.d/mirrorlist && \
        pacman -Syu

RUN pacman -S --noconfirm git base-devel

RUN useradd -mU $user && \
        echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
        echo "$user:$user" | chpasswd

USER $user
WORKDIR /home/$user/pkgbuilds
