# Docker image for @angular/cli

**os:** linux x64
**docker hub:** [![Docker Pulls](https://img.shields.io/docker/pulls/rat2000/angular-cli.svg)](https://hub.docker.com/r/rat2000/angular-cli)


## Available CLI versions

7.x: 7.3.6
8.x: -

## Usage examples

This image has the same usage as Angular CLI (https://cli.angular.io/)

### Creating a project

```
docker run -it --rm -w /app -v $(pwd):/app alexsuch/angular-cli:1.5.5 ng new my-project-name
```

### Generating a component

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app alexsuch/angular-cli:1.5.5 ng g component sample-component
```

### Serving

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app -p 4200:4200 alexsuch/angular-cli:1.5.5 ng serve --host 0.0.0.0
```