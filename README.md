# home-base-image

Build:
```terminal
docker build . --no-cache --platform linux/arm64 -t briantilburgs/python3.9-slim-mariadb:001 && docker push briantilburgs/python3.9-slim-mariadb:001
docker build . --no-cache --platform linux/arm64 -t briantilburgs/python3.9-slim-mariadb:002 && docker push briantilburgs/python3.9-slim-mariadb:002

```