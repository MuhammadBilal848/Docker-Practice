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

⦾ Create Docker Container
```
sudo docker create --name any_name-container -p 8000:8000 image_name
```

⦾ Start Docker Container
```
docker start container_name
```

⦾ Create & Name and run a Docker container using Image ID & Change Port
```
docker run -d -p (this port name could be the same or you can change it)port:port(should be same as defined in the DockerFile) --name container_name image_id
```

⦾ Create and run Docker container in detached mode (without -d) & change port.
```
docker run -it -p (this port name could be the same or you can change it)port:port(should be same as defined in the DockerFile) image_id
```

⦾ Create and Run a Docker container using Image ID (this command automatically creates a Docker container using a Docker image and names it randomly)
```
sudo docker run -it -p (this port name could be the same or you can change it)port:port(should be same as defined in the DockerFile) image_id
```

⦾ Making Changes in Files inside Docker Container (Container must be up and running)
> Container must be up and running
```
1. docker exec -it container_name sh
2. ls # list all the files
3. apt-get update # update apt-get
4. apt-get install vim # install vim, it helps in editing files
5. vim file_name.extension
6. Press any alphabet to go into editing mode and make your respective changes in the file
7. write ":wq!" and enter to save changes
8. exit # to get out of exec mode
8. docker commit container_id new_image_name # container_id must be the container that you made changes in.
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

⦾ Remove a docker image 
```
sudo docker rmi image_id
```

⦾ Remove a docker image forcefully 
```
sudo docker rmi image_id --force
```

⦾ Remove a Docker container
```
sudo docker rm container_id
```

⦾ Create a Docker Image Tar File
```
docker save -o any_name.tar image_name:tag
```

⦾ Load a Tar File Docker Image
```
docker load < file_name.tar
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

⦾ Get Docker Container Data
```
1. docker exec -it container_name /bin/bash
2. cd /app/your_output_directory
3. ls
4. exit
5. docker cp swap:/app/output_directory/image.jpg /path/on/host/image.jpg
```

⦾ Edit Docker Image
> Docker images are immutable, but we can make a temporary container of that image and edit it.
```
1. docker run -it --name temp_container your_image /bin/sh
2. make your changes using `vim`, `pip` etc. # if dependendies cause errors , install then using pip install xyzz
3. exit
4. docker commit temp_container your_new_image:v2
5. docker run --name your_new_container_name -p 8000:8000 your_new_image:v2 uvicorn app:app --host 0.0.0.0 --port 8000
```
