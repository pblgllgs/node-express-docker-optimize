# OPTIMIZATION DOCKER CONTAINER

## BUILD IMAGE

```$bash
docker build node-user .
```

## CREATE AND RUN CONTAINER

```$bash
docker run -d -p 3000:3000 --name node-test node-user:latest
```

## STOP, DELETE CONTAINER AND DELETE IMAGE

```$bash
docker stop node-user && docker rm node-user && docker rmi node-user
```
