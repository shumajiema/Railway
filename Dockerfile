FROM alpine:latest

# 安装执行环境
RUN apk add --no-cache v2ray

# 让 v2ray 动态监听 Railway 的端口 $PORT
CMD v2ray run -config='{"inbounds":[{"port":'${PORT:-8080}',"protocol":"vless","settings":{"clients":[{"id":"ad04f291-724d-44a6-953e-2b5093557e4e"}],"decryption":"none"},"streamSettings":{"network":"ws"}}],"outbounds":[{"protocol":"freedom"}]}'
