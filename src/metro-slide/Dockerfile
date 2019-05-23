FROM jpbernius/pandoc

RUN git clone https://github.com/matze/mtheme --depth 1 /root/mtheme
WORKDIR /root/mtheme

RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
  echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list &&\
  apt update && apt install -y wget unzip latexmk
RUN make sty && make install

RUN alias sudo=
RUN cd docker && \
  sh getFiraFont.sh

WORKDIR /data
VOLUME ["/data"]
