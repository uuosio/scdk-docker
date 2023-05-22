# SCDK 0.1.4

## Retrieve the Docker Image

Initiate your work by obtaining the most recent SCDK Docker image:

```bash
docker pull ghcr.io/uuosio/scdk:latest
```

## Launch the Docker Container

### Launching the eosdebugger

To activate the `eosdebugger` within a Docker container, execute the command below:

```bash
docker run -it --rm -p 9090:9090 -p 9092:9092 -p 9093:9093 -t ghcr.io/uuosio/scdk
```

## Execute the test in the current directory directly in Docker

```bash
docker run --entrypoint ipyeos -it --rm -v $(pwd):/develop -w /develop -t ghcr.io/uuosio/scdk ./test.py
```

### Launching a Bash Shell

To activate a Bash shell within a Docker container and map the current directory to the `/develop` directory, utilize the command below:

```bash
docker run --entrypoint bash -it --rm -v "$(pwd)":/develop -t ghcr.io/uuosio/scdk
```

By employing the `-v` flag, you can ensure that the current directory on your host machine is mounted to the `/develop` directory within the Docker container.