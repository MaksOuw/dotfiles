function dex() {
    local CONTAINER_NAME="$1"
    local COMMAND="bash"

    if [ "$#" -gt 1 ]; then
        COMMAND=$(echo "$@" | cut -d' ' -f2-)
    fi  

    docker exec -ti "${CONTAINER_NAME}" ${COMMAND}
}
