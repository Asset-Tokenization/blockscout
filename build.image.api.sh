#!/bin/bash

IMAGE_TAG=$1

docker build . -f ./docker/Dockerfile \
    --build-arg CACHE_EXCHANGE_RATES_PERIOD=""\
    --build-arg API_V1_READ_METHODS_DISABLED=false \
    --build-arg DISABLE_WEBAPP=true \
    --build-arg API_V1_WRITE_METHODS_DISABLED=false \
    --build-arg CACHE_TOTAL_GAS_USAGE_COUNTER_ENABLED="" \
    --build-arg CACHE_ADDRESS_WITH_BALANCES_UPDATE_INTERVAL="" \
    --build-arg RELEASE_VERSION="${IMAGE_TAG}" \
    --build-arg ADMIN_PANEL_ENABLED="" \
    -t registry.metadap.io/blockscout:${IMAGE_TAG}