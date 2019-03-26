# Docker image for @angular/cli

**os:** linux x64 <br>
**docker hub:** [![Docker Pulls](https://img.shields.io/docker/pulls/rat2000/angular-cli.svg)](https://hub.docker.com/r/rat2000/angular-cli)


## Available CLI versions

7.x: 7.3.6 <br>
8.x: 8.0.0-beta.9

## Usage examples

This image has the same usage as Angular CLI (https://cli.angular.io/)

### Creating a project

```
docker run -it --rm -w /app -v $(pwd):/app rat2000/angular-cli:7.3.6 ng new my-project-name
```

### Generating a component

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app rat2000/angular-cli:7.3.6 ng g component sample-component
```

### Serving

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app -p 4200:4200 rat2000/angular-cli:7.3.6 ng serve --host 0.0.0.0
```