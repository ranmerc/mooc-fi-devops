```shell
docker build -t 1.14-frontend .
docker build -t 1.14-backend .
docker run --rm -p 127.0.0.1:3000:5000 1.14-frontend
docker run --rm -p 127.0.0.1:8080:8080 1.14-backend
```
