FROM ubuntu:16.04

RUN apt-get update && \
apt-get install -y curl && \
apt-get install -y unzip && \
apt-get install libunwind8 && \
apt-get install libicu55 && \
curl https://download.microsoft.com/download/d/e/b/deb7b081-a3dc-47ea-8f2a-48cd8e486036/sqlpackage-linux-x64-en-US-15.0.4630.1.zip -o sqlpackage.linux.zip && \
unzip sqlpackage.linux.zip -d /opt/sqlpackage && \
rm sqlpackage.linux.zip && \
chmod a+x opt/sqlpackage/sqlpackage && \
ln -s /opt/sqlpackage/sqlpackage /usr/local/bin/sqlpackage

CMD /opt/sqlpackage/sqlpackage
