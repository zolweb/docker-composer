docker-composer
=============================

A simple Docker image and Dockerfile to run composer through HHVM


## Simple command

```bash

docker run -ti --rm=true \
		-v `pwd`:/srv \
		-v $(LOCAL_DIR):$(HOMEDIR)/.composer \
		marmelab/composer-hhvm bash -ci '\
			composer install --no-interaction --prefer-dist'

```

## Docker compose example

```bash

composer:
    image: zolweb/docker-composer
    working_dir: /src
    volumes:
        - /var/tmp/composer:/root/.composer
        - ".:/src"
    net: "host"

```

**For non root user inside container**

```bash

composer:
    image: zolweb/docker-composer:no-root
   ...

```
