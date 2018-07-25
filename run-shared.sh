#!/bin/bash

docker run -it \
    --rm \
    --net host \
    --env="DISPLAY" \
    --env="TERM" \
    --user=$USER \
    --workdir="$HOME" \
    --volume="$HOME:$HOME" \
    --volume="/etc/localtime:/etc/localtime:ro" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --name flatfish_pipe \
    flatfish_pipe \
    /bin/bash
