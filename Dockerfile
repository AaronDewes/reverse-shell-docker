FROM debian:latest

COPY entry.sh /entry.sh

ENTRYPOINT entry.sh
