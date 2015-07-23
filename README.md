# Testing Node Drivers

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

## Running Driver Tests

```
./run.sh
```
