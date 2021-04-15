FROM alpine:latest AS release
RUN apk add --no-cache git

ARG GIT_REVISION_POSTGRES
ARG GIT_REPO_URL_POSTGRES

WORKDIR /root/

RUN set -ex \
  && git clone $GIT_REPO_URL_POSTGRES release -b $GIT_REVISION_POSTGRES --depth 1

FROM postgres:9.4

COPY --from=release /root/release/build/postgres/postgres.conf /etc/postgresql/postgresql.conf