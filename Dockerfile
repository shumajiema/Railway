FROM alpine:latest
RUN apk add --no-cache v2ray
CMD v2ray run -config='{"inbounds":[{"port":'${PORT:-8080}',"protocol":"vless","settings":{"clients":[{"id":"ad04f291-724d-44a6-953e-2b5093557e4e"}],"decryption":"none"},"streamSettings":{"network":"ws"}}],"outbounds":[{"protocol":"freedom"}]}'
