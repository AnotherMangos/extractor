
# Create the docker container used to extract maps
create path:
    docker build --build-arg TOOLS_PATH={{ path }} -t amangos/extractor .
