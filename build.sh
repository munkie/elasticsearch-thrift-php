#!/bin/sh

command -v thrift >/dev/null 2>&1 || { echo "thrift is not installed" >&2; exit 1; }

rm -rf src
mkdir src
thrift -gen php:oop -out src/ vendor/elasticsearch/elasticsearch-transport-thrift/elasticsearch.thrift
echo "Elasticsearch classes were regenerated in src folder"

