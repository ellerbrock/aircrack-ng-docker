FROM debian:jessie-slim

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN apt-get update && \
  apt-get install -y aircrack-ng && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["aircrack-ng"]
CMD ["--help"]
