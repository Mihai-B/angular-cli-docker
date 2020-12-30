# Docker image for @angular/cli

**os:** linux x64 <br>
**docker hub:** [![Docker Pulls](https://img.shields.io/docker/pulls/mihaibob/angular-cli.svg)](https://hub.docker.com/r/mihaibob/angular-cli)
<br>
**buy me a coffe:** [![Buy a coffe](https://cdn.rawgit.com/twolfson/paypal-github-button/1.0.0/dist/button.svg)](https://www.paypal.com/paypalme2/mihaibob/1?locale.x=en_US)


## Available CLI versions

8.x: 8.3.15 <br>
9.x: 9.1.4 <br>
10.x: 10.1.3, 10.1.4 <br>
11.x: 11.0.5

## Usage examples

This image has the same usage as Angular CLI (https://cli.angular.io/)

### Creating a project

```
docker run -it --rm -w /app -v $(pwd):/app mihaibob/angular-cli:[version_you_need] ng new my-project-name
```

### Generating a component

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app mihaibob/angular-cli:[version_you_need] ng g component sample-component
```

### Serving

```
docker run -it --rm -w /app -v $(pwd)/my-project-name:/app -p 4200:4200 mihaibob/angular-cli:[version_you_need] ng serve --host 0.0.0.0
```
