# ASP.NET Core App on Docker
This is an example of how to get an ASP.NET Core app running on Docker.
Examples taken from https://docs.docker.com/engine/examples/dotnetcore/

## Getting Started
```bash
docker build -t aspnetapp .
docker run -p 8080:80 --name aspnetapp aspnetapp
```

## Cleaning Up
```bash
# CTRL + C to stop the server
docker container rm aspnetapp
docker images
docker rmi <image_name_1> <image_name_2>
```
