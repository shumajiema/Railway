FROM alpine:latest
RUN apk add --no-cache v2ray
COPY config.json /etc/v2ray/config.json
CMD v2ray run -config /etc/v2ray/config.json
