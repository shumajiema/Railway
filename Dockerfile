FROM alpine:latest

# 安装 v2ray
RUN apk add --no-cache v2ray

# 设置环境变量（Railway 等平台会自动覆盖这个值）
ENV PORT=8080

# 使用 sh -c 来确保环境变量 $PORT 能被正确解析
CMD sh -c "v2ray run -config '{\"inbounds\":[{\"port\":$PORT,\"protocol\":\"vless\",\"settings\":{\"clients\":[{\"id\":\"ad04f291-724d-44a6-953e-2b5093557e4e\"}],\"decryption\":\"none\"}}],\"outbounds\":[{\"protocol\":\"freedom\"}]}'"
