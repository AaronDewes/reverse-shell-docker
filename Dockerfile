FROM debian:latest

# Install nc
RUN apt-get update && apt-get install -y netcat-openbsd

COPY reverse-shell-docker.sh /entry.sh

ENTRYPOINT entry.sh
