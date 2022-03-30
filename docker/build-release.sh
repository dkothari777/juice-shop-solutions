#!/usr/bin/env bash
set -eu -o pipefail
docker login
OWASP_BUILD_DATE="2022-03-29"
docker build . -f Dockerfile -t dkothari777/juice-shop:${OWASP_BUILD_DATE}
docker push dkothari777/juice-shop:${OWASP_BUILD_DATE}
docker build . -f Dockerfile -t dkothari777/juice-shop:latest
docker push dkothari777/juice-shop:latest

