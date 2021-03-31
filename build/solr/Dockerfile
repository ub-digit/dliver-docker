FROM solr:5.5.5

WORKDIR /opt/solr/server/solr
RUN mkdir dliver dliver/conf dliver/data
COPY core.properties dliver/
COPY schema.xml solrconfig.xml dliver/conf/