FROM ghcr.io/ihaskell/ihaskell-notebook:master AS base-env

USER root
RUN apt-get update && apt-get install -y git curl libtinfo6 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/library && chown -R jovyan:users /opt/library

USER jovyan

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh -s -- --non-interactive --set-defaults

ENV PATH="/home/jovyan/.ghcup/bin:${PATH}"

RUN cabal update

FROM base-env AS final

USER jovyan

ADD https://api.github.com/repos/DL-2026-1/haskel-haskage/commits/main /tmp/latest_commit.json

RUN git clone https://github.com/DL-2026-1/haskel-haskage /opt/library

WORKDIR /opt/library
RUN cabal install --lib

WORKDIR /home/jovyan