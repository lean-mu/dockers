# Project Fn²

Project Fn² is an attempt to revive Project Fn with the focus is to get an easy to deploy, fully functional stack on K8S.

This project holds all the docker images used within the context of Project Fn², namely:

* _fn-images/_ - Holds [Microcontainers](https://medium.com/travis-on-docker/microcontainers-tiny-portable-docker-containers-1507e3bf8688) for each supported **fn** languages
* _tooling-images/_ - Holds extra components of the distribution
* _experimental/_ - Holds images for non-supported languages

Use the `fnproject2/LANGUAGE:dev` images for building/vendoring.
Use the `fnproject2/LANGUAGE` images for running (much smaller than the dev ones).
Use the `fnproject2/LANGUAGE:edge` images for running on alpine:edge.

## Building

Run:

```sh
ruby build.rb [START_FROM]
```

If build breaks somewhere, you may continue by adding the `START_FROM` parameter.

## Publishing Images

By default, images are publised to github. Feel free to alter the code to maintain your own images.
  For this purpose, you may want to use the environment variable `ENV` to set the location of your repository. ie. `export ENV=

Project admins may publish images by,

1. Log into the github repo - ie. `cat ~/TOKEN.txt | docker login https://docker.pkg.github.com -u USERNAME --password-stdin`
2. 
docker.pkg.github.com/OWNER/REPOSITORY/IMAGE_NAME

docker.pkg.github.com/project-fn2/dockers/base