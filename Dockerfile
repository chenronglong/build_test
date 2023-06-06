# FROM golang:alpine
FROM alpine:latest
# FROM scratch 完全的空镜像，无法进入命令行
# FROM scratch

WORKDIR /app

COPY ./main /app

EXPOSE 9999

ENTRYPOINT [ "main" ]
# CMD [ "main"]