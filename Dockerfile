FROM ghcr.io/arvatoaws-labs/python:alpine

ENV region
RUN pip install awscli graffiti_monkey
ADD graffiti-config /

ENTRYPOINT graffiti-monkey --config /graffiti-config --verbose --region $region