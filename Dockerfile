FROM php:8.2-alpine AS app_composer

LABEL maintainer="Alexader S. <alexander@sharapov.biz>"

ENV COMPOSER_ALLOW_SUPERUSER 1

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY composer.json /srv

WORKDIR /srv

RUN composer install --no-interaction --no-scripts --no-dev

FROM php:8.2-alpine AS app_service_cron

LABEL maintainer="Alexander S. <alexander@sharapov.biz>"

ENV TZ=UTC

RUN apk update && apk add tzdata

COPY --from=app_composer /srv/vendor /srv/vendor
COPY runner /srv

COPY ./start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
