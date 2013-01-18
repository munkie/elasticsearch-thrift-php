#!/bin/sh

rm -rf src
mkdir src
thrift -gen php:oop -out src/ vendor/elasticsearch/elasticsearch-transport-thrift/elasticsearch.thrift


