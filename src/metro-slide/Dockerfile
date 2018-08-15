FROM jpbernius/pandoc

RUN git clone https://github.com/matze/mtheme --depth 1 /root/mtheme
WORKDIR /root/mtheme

RUN apt update && apt install -y wget unzip latexmk
RUN make sty && make install

RUN alias sudo=
RUN cd docker && \
  sh getFiraFont.sh

WORKDIR /data
VOLUME ["/data"]
