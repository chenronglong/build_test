

# go env -w GOOS=linux

docker rmi ronglongchen/build_demo && docker rm -f build_demo

go build -o main ./main.go

docker build -t ronglongchen/build_demo .

# mac m1 打包出来服务器运行不了
# docker buildx build --platform linux/amd64 -t ronglongchen/build_demo . --push

docker tag ronglongchen/build_demo ronglongchen/build_demo 

docker push ronglongchen/build_demo 


docker run -d -p 9999 --name build_demo ronglongchen/build_demo 

# go env -w GOOS=darwin

