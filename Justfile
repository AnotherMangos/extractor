
# Create the docker container used to extract maps
create extension path:
    docker build --build-arg TOOLS_PATH={{ path }} -t amangos/{{ extension }}-extractor .
