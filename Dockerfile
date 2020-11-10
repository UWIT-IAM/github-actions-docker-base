FROM docker
LABEL maintainer="Thomas Thorogood<goodtom@uw.edu>"

WORKDIR /action
COPY ./initialize_auth.sh ./

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git

# Adding the package path to local
ENV PATH=$PATH:/usr/local/gcloud/google-cloud-sdk/bin \
    DOCKER_REPO=gcr.io
