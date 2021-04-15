
# This image only purpose is to hold a set of Mets packages for testing
FROM ubuntu:latest AS release

RUN mkdir /srv/__STORE

ADD dliver-test-data /srv/__STORE/

VOLUME /srv/__STORE

ENTRYPOINT tail -f /dev/null
