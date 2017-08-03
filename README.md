# Spring Boot Demo

This is a demo for an agile lession.

## Build

```shell
gradle build
```

The output artifact is `build/libs/hello-0.0.1.jar`

## Deploy

Jenkins will deploy it by docker to `http://localhost:8100`

## Test

### Unit Test

```shell
gradle test
```

### Acceptance Test

```shell
gradle cucumber
```