

go env -w GOOS=linux

go build -o main ./main.go

docker build -t ronglongchen/build_demo .

docker tag ronglongchen/build_demo ronglongchen/build_demo 

docker push ronglongchen/build_demo 

go env -w GOOS=windows