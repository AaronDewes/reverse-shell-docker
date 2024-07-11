FROM debian:latest

# Install nc
RUN apt-get update && apt-get install -y netcat-openbsd

COPY entry.sh /entry.sh

ENTRYPOINT entry.sh
