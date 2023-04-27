# PSCDK 0.1.2

## Pull the Docker Image

To get started, pull the latest PSCDK Docker image:

```
docker pull ghcr.io/uuosio/pscdk:latest
```

## Run the Docker Container

### Running the eosdebugger

To run the `eosdebugger` in a Docker container, execute the following command:

```
docker run -it --rm -p 9090:9090 -p 9092:9092 -p 9093:9093 -t ghcr.io/uuosio/pscdk
```

### Running a Bash Shell

To run a Bash shell in a Docker container and map the current directory to the `/work` directory, use the following command:

```
docker run --entrypoint bash -it --rm -p 9090:9090 -p 9092:9092 -p 9093:9093 -v "$(pwd)":/work -t ghcr.io/uuosio/pscdk
```

By using the `-v` flag, you can ensure that the current directory on your host machine is mounted to the `/work` directory in the Docker container.
