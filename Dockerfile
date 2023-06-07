# FROM golang:alpine
# FROM alpine:latest
# FROM scratch 完全的空镜像，无法进入命令行
# FROM scratch
FROM loads/alpine:3.8

WORKDIR /app

COPY ./main /app


EXPOSE 9999

# CMD [ "main"]
# ENTRYPOINT [ "ls","-l"]
ENTRYPOINT [ "./main"]
# ENTRYPOINT [ "file","./main"]