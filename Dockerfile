FROM ghcr.io/ihaskell/ihaskell-notebook:master AS runtime

ENV GHCRTS="-N"

USER root

ADD https://api.github.com/repos/DL-2026-1/lambda-ai/commits/main /tmp/latest_commit.json

RUN git clone https://github.com/DL-2026-1/lambda-ai /opt/library

RUN chown -R jovyan:users /opt/library

USER jovyan

WORKDIR /opt/library
# RUN stack update && stack install
# RUN printf '%s\n' 'resolver: lts-23.21' 'packages: []' > /opt/library/stack.yaml
RUN printf '%s\n' 'resolver: lts-23.21' 'packages: ["."]' > /opt/library/stack.yaml

RUN stack build

WORKDIR /home/jovyan/