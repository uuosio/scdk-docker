FROM ubuntu:20.04
LABEL org.opencontainers.image.source="https://github.com/uuosio/pscdk-docker"
EXPOSE 9090
EXPOSE 9092
EXPOSE 9093
RUN apt update
RUN apt install -y wget
RUN apt install -y libxml2-dev
RUN apt install -y python3.9-dev
RUN apt install -y python3-pip
RUN python3.9 -m pip install --upgrade pip

ARG DEBIAN_FRONTEND=noninteractive
#RUN apt install -y --no-install-recommends postgresql
RUN python3.9 -m pip install ipyeos==0.4.0
RUN python3.9 -m pip install pyeoskit==1.1.12
RUN python3.9 -m pip install pscdk==0.1.2
RUN python3.9 -m pip install gscdk==0.7.9
RUN python3.9 -m pip install eoscdt==0.1.7

#install golang
RUN wget https://go.dev/dl/go1.19.9.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.9.linux-amd64.tar.gz
RUN ln -sf /usr/local/go/bin/go /usr/local/bin/go

ENTRYPOINT ["eos-debugger", "--addr", "0.0.0.0", "--apply-request-addr", "host.docker.internal", "--rpc-server-addr", "0.0.0.0"]
