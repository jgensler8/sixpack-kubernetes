# sixpack-kubernetes

## Docker

This contains a sample Dockerfiles for building and a `docker-compose.yml` file for spinning up locally.

## Kubernetes

I have had some issues with my Kubernetes server timing connection downloads that take more than ~2 seconds. I have added an NGINX container to proxy to Sixpack and this seems to have helped out.

One could probably split these out into multiple deployments but it is enough to get it working.
