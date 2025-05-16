FROM golang:alpine

RUN go install tailscale.com/cmd/derper@latest

COPY ./entrypoint.sh /entrypoint.sh

EXPOSE 443
EXPOSE 3478

ENTRYPOINT [ "/entrypoint.sh" ]