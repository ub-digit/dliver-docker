FROM alpine:latest AS release
RUN apk add --no-cache git

ARG GIT_REVISION
ARG GIT_REPO_URL

WORKDIR /root/

RUN set -ex \
  && git clone $GIT_REPO_URL_POSTGRES release -b $GIT_REVISION_POSTGRES --depth 1

FROM postgres:9.4

COPY --from=release /root/release/docker/build/postgres/postgres.conf /etc/postgresql/postgresql.conf