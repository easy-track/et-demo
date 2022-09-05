source .env
DOCKER_DEFAULT_PLATFORM=linux/amd64 docker build . -t qobiljon/dummy-acc-data:${DUMMY_DATA_IMG_VER}
