# OPTIMIZATION DOCKER CONTAINER

## BUILD IMAGE

```$bash
docker build node-test .
```

## CREATE AND RUN CONTAINER

```$bash
docker run -d -p 3000:3000 --name node-test node-optimize:latest
```

## STOP, DELETE CONTAINER AND DELETE IMAGE

```$bash
docker stop node-test && docker rm node-test && docker rmi node-optimize
```
