# Docker image for @angular/cli

**os:** linux x64 <br>
**docker hub:** [![Docker Pulls](https://img.shields.io/docker/pulls/rat2000/angular-cli.svg)](https://hub.docker.com/r/rat2000/angular-cli)
<br>
**buy me a coffe:** [![Buy a coffe](https://cdn.rawgit.com/twolfson/paypal-github-button/1.0.0/dist/button.svg)](https://www.paypal.com/paypalme2/mihaibob/1?locale.x=en_US)


## Available CLI versions

7.x: 7.3.6, 7.3.7, 7.3.8, 7.3.9 <br>
8.x: 8.0.0-beta.9, 8.0.0, 8.3.1, 8.3.5, 8.3.15 <br>
9.x: 9.0.1, 9.0.2, 9.0.7, 9.1.0, 9.1.4

## Usage examples

This image has the same usage as Angular CLI (https://cli.angular.io/)

### Creating a project

```
docker run -it --rm -w /app -v $(pwd):/app rat2000/angular-cli:[version_you_need] ng new my-project-name
```

### Generating a component

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app rat2000/angular-cli:[version_you_need] ng g component sample-component
```

### Serving 

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app -p 4200:4200 rat2000/angular-cli:[version_you_need] ng serve --host 0.0.0.0
```
