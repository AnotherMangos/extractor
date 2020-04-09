
# Create the docker container used to extract maps
create path:
    docker build --build-arg PATH={{ path }} -t amangos/extractor .
