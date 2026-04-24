FROM alpine:latest
RUN apk add --no-cache v2ray
ENV PORT=8080
CMD v2ray run -config="{\"inbounds\":[{\"port\":${PORT},\"protocol\":\"vless\",\"settings\":{\"clients\":[{\"id\":\"ad04f291-724d-44a6-953e-2b5093557e4e\"}],\"decryption\":\"none\"},\"streamSettings\":{\"network\":\"ws\"}}],\"outbounds\":[{\"protocol\":\"freedom\"}]}"
