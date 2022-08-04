FROM php:7.4-cli-alpine as build
COPY --from=composer /usr/bin/composer /usr/bin/composer

ARG VERSION
ENV COMPOSER_HOME=/tmp

RUN composer global config --no-plugins allow-plugins.dealerdirect/phpcodesniffer-composer-installer false \
    && composer global require symplify/easy-coding-standard:$VERSION \
    && composer

FROM php:7.4-cli-alpine


RUN apk add --no-cache icu-dev  \
    && docker-php-ext-install intl

COPY --from=build /tmp/vendor/ /composer/
COPY bin/entrypoint /usr/bin

ENV PATH="${PATH}:/composer/bin/"

ENTRYPOINT ["/usr/bin/entrypoint"]