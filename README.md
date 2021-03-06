# Testing Node Drivers

Testing popular database drivers for Node.JS using Docker and Docker Compose to
handle external dependencies.

## Requirements

* Docker >= v1.5
* Docker Compose >= v1.2

## Init Git Submodules

```
$ git submodule update --init --recursive
```

## Adding New Drivers

```
$ git submodule add -b some-branch git@github.com:user/repo.git drivername
```

The `drivername` must be the same name that you would like to name the service
in the [docker-compose.yml](docker-compose.yml) configuration.

This is the configutation for `noderedis`:

```yml
noderedis:
    image: iojs
    working_dir: /usr/src/app
    links:
        - redis
    volumes:
        - noderedis:/usr/src/app
    command: npm test

redis:
    image: redis
```

## Running Driver Tests

```
$ ./run.sh
```
