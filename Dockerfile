FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y software-properties-common

RUN sh -c "wget -O - https://dl.openfoam.org/gpg.key > /etc/apt/trusted.gpg.d/openfoam.asc"
RUN add-apt-repository -y http://dl.openfoam.org/ubuntu

RUN apt-get update
RUN apt-get -y install openfoam10

RUN apt-get -y install x11-apps

RUN mkdir $HOME/case
RUN echo "source /opt/openfoam10/etc/bashrc" >> $HOME/.bashrc

COPY entry_scripts/* /usr/local/bin

#CMD /usr/local/bin/start_parafoam.sh





