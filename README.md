# About this project
Interact between two different docker containers.

we need to establish connection between two different containers, as containers by principle are isolated.

## docker-compose
Connection can be established in different way. one of the way is introducing docker-compose concept.

with the docker-compose, containers specidifed inside it can talk to each other with the services name mentioned in docker-compose file.

 ### docker-compose breakdown
    - version of the docker-compose
    - services - name of the container(similar to tag) , with this name we can execute connection from / with this container
        - port mapping
        - build and it's context
            - build . (picksup Dockerfile in this directory and build an image)
        - restart rules 
            - when container should be restarted "no"|always|on-failure|unless-stopped

## in this project we are going to ,

    - run the docker image as multipe container using docker-compose
    - invoke localhost from browser to reach nodejs image output
    - nodejs image will connect with redis image internally and calculates number of visit to this page



## command to be executed
    docker-compose up --build
    docker-compose ps  to see the list of containers running similar to docker ps