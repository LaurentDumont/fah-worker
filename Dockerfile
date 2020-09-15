FROM debian:9

RUN apt-get update && apt-get upgrade -y && apt-get install wget -y

RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb

RUN apt-get install ./fahclient_7.5.1_amd64.deb -y

COPY config.xml /etc/fahclient/config.xml

ENTRYPOINT ["/usr/bin/FAHClient", "/etc/fahclient/config.xml", "--run-as", "root", "--pid-file=/var/run/fahclient.pid"]
