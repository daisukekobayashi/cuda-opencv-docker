ARG BASE_TAG
FROM nvidia/cuda:${BASE_TAG}

LABEL maintainer="Daisuke Kobayashi <daisuke@daisukekobayashi.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
      && apt-get install --no-install-recommends --no-install-suggests -y \
            gnupg2 ca-certificates git build-essential libopencv-dev \
      && rm -rf /var/lib/apt/lists/*
