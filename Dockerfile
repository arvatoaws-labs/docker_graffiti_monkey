FROM ghcr.io/arvatoaws-labs/python:2.7-alpine

ENV region eu-central-1
RUN apk add bash
RUN pip install awscli graffiti_monkey
ADD graffiti-config /

ENTRYPOINT /bin/bash