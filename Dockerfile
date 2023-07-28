FROM python:3.7-alpine

COPY DG_COMMIT_HASH /tmp
RUN apk add git
RUN python3 -m pip install git+https://github.com/pyos/dg@$(cat /tmp/DG_COMMIT_HASH)
