FROM debian:jessie

RUN \
  apt-get update && \
  	apt-get install -y \
  	  bzr \
  	  curl \
  	  gcc \
  	  git

# setup GO
ENV GOVER 1.6
ENV GOPATH ${HOME}/go/
ENV PATH $PATH:/usr/local/go/bin
RUN curl "https://storage.googleapis.com/golang/go${GOVER}.linux-amd64.tar.gz" | \
    tar -C /usr/local -xz

# prepare cassandra migrations
RUN go get -u github.com/mattes/migrate