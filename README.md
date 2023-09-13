# Docker PHP Cron Microservice

Used to run your scheduled tasks

## Build the container
```bash
docker build . -t docker-php-microservice-cron:latest
```

## Run the container
```bash
docker run -it --env-file=.env --name docker-php-microservice-cron --restart=unless-stopped -d docker-php-microservice-cron:latest
```

## Show logs
```bash
docker logs -f docker-php-microservice-cron
```

## Container CLI
```bash
docker exec -it docker-php-microservice-cron /bin/sh
```
