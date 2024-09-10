# Docker Practice

⦾ View all available images
```
sudo docker images
```

⦾ View all available containers
```
sudo docker ps -a
```

⦾ Make a docker image 
```
sudo docker build -t image_name .
```

⦾ Remove a docker image 
```
sudo docker rmi image_id
```

⦾ Remove a docker image forcefully 
```
sudo docker rmi image_id --force
```

⦾ Create Docker Container
```
sudo docker create --name any_name-container -p 8000:8000 image_name
```

⦾ Create and run a Docker container using Image ID & Change Port
```
docker run -d -p (this port name could be the same or you can change it)port:port(should be same as defined in the DockerFile) --name container_name image_id
```

⦾ Create and run Docker container in detached mode (without -d) & change port.
```
docker run -it -p (this port name could be the same or you can change it)port:port(should be same as defined in the DockerFile) yolov5image
```


⦾ Create and Run a Docker container using Image ID (this command automatically creates a Docker container using a Docker image and names it randomly)
```
sudo docker run -it image_name
```


⦾ Run a Docker image and edit it (this command helps make changes in the Docker image and when we commit changes, docker makes a new image)
```
sudo docker run -it image_name sh
```

⦾ Stop a Docker container
```
sudo docker stop container_id
```

⦾ Stop all Docker container
```
docker stop $(docker ps -a -q)
```

⦾ Remove a Docker container
```
sudo docker rm container_id
```

⦾ Remove a Docker image
```
sudo docker rmi image_name
```

⦾ List all Docker volumes
```
sudo docker volume ls
```

⦾ Create a Docker network
```
sudo docker network create network_name
```

⦾ Share Docker Image
```
docker save -o my-image.tar my-image:latest
```

