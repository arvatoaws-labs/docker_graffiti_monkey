# FROM ghcr.io/arvatoaws-labs/python:2.7-alpine
FROM python:2.7-alpine
ENV region eu-central-1
RUN pip install awscli graffiti_monkey
ADD graffiti-config /

ENTRYPOINT graffiti-monkey --config /graffiti-config --verbose --region $region