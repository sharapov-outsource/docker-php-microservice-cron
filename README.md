# Small standalone service to run cron scheduled tasks based on PHP

## Set up schedule

Set up cron schedule by editing `start.sh`

## Build the container
```bash
docker build . -t php_service_crontab:latest --no-cache
```

## Run the container
```bash
docker run -it --env-file=.env --name php_service_crontab -d php_service_crontab:latest
```

## Show logs
```bash
docker logs -f php_service_crontab
```

## Login to container CLI
```bash
docker exec -it php_service_crontab /bin/sh
```
