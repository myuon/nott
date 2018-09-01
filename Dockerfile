FROM debian:latest

RUN apt update && \
    apt install -y \
        texlive \
        texlive-lang-japanese \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        lyx
RUN kanji-config-updmap-sys auto

VOLUME /data
WORKDIR /data

CMD ["sh", "-c", "lyx"]

