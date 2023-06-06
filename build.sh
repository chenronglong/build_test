

go env -w GOOS=linux

go build -o main ./main.go

docker buildx build --platform linux/amd64 -t ronglongchen/build_demo . --push

docker tag ronglongchen/build_demo ronglongchen/build_demo 

# docker push ronglongchen/build_demo 

go env -w GOOS=darwin