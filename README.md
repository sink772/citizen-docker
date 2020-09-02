# Dockerfile for ICON Citizen Node

This repository contains Dockerfile and some configuration files to run the ICON Citizen node in a Docker container.

## Base Docker Image

* python:3.7.9-slim-stretch


## Build

### Prerequisites

You need to download a proper citizen pack first to make the Docker image,
and copy all Python packages and `icon_rc` file into `./whl' directory.

```
$ curl -O http://<some>/<path>/citizen_pack_2008271251x7da45b.tar.gz
$ tar zxf citizen_pack_2008271251x7da45b.tar.gz && cd citizen_pack_2008271251x7da45b/
$ cp icon_rc whl/*.whl <this_repo_root>/whl/
```

Follow the `quick_start.md` instruction in the citizen pack to generate a key file,
then modify the password field in the configuration file, `./conf/citizen_mainnet.json`.

### Making a Image

```
$ make build
```

## Usage

```
$ make run
[ ok ] Starting RabbitMQ Messaging Server: rabbitmq-server.

root@70f543a55d5c:/citizen# ./run_citizen_mainnet.sh
...
```
