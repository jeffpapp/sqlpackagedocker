FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install curl

RUN apt-get install libunwind8

RUN apt-get install libicu60

RUN curl https://download.microsoft.com/download/d/e/b/deb7b081-a3dc-47ea-8f2a-48cd8e486036/sqlpackage-linux-x64-en-US-15.0.4630.1.zip -o sqlpackage.linux.zip

RUN unzip sqlpackage.linux.zip -d /opt/sqlpackage

#RUN echo "export PATH=\"\$PATH:opt/sqlpackage\"" >> ~/.bashrc

RUN chmod a+x opt/sqlpackage/sqlpackage

#RUN source ~/.bashrc

CMD /opt/sqlpackage/sqlpackage
