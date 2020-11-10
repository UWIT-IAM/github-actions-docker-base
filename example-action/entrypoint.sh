IMAGE_NAME=$1

/action/initialize_auth.sh

docker run -it ${IMAGE_NAME} "echo hello, world"