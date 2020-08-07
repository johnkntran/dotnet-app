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

## Getting Started
```bash
# Build and start container in "watch" mode for development
docker build -t aspnetapp . && docker run --name aspnetapp -p 5000:5000 aspnetapp

# Stop and delete container/image
docker container stop aspnetapp && docker container rm aspnetapp && docker rmi aspnetapp

# Build DLL artifact for production
docker build -t aspnetapp .
docker run -p 5000:80 --name aspnetapp aspnetapp
```
