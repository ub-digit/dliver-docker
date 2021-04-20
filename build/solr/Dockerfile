FROM alpine:latest AS release
RUN apk add --no-cache git

ARG GIT_REVISION_SOLR
ARG GIT_REPO_URL_SOLR

WORKDIR /root/

RUN set -ex \
  && git clone $GIT_REPO_URL_SOLR release -b $GIT_REVISION_SOLR --depth 1

FROM solr:5.5.5

WORKDIR /opt/solr/server/solr
RUN mkdir dliver dliver/conf dliver/data

COPY --from=release /root/release/solr_config/dliver/core.properties dliver/
COPY --from=release /root/release/solr_config/dliver/conf/schema.xml dliver/conf/
COPY --from=release /root/release/solr_config/dliver/conf/solrconfig.xml dliver/conf/

