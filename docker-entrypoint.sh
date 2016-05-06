#!/bin/bash

echo "[account]" > ~/.idcfrc
echo "host=${IDCF_END_POINT}" >> ~/.idcfrc
echo "api_key=${API_KEY}" >> ~/.idcfrc
echo "secret_key=${SECRET_KEY}" >> ~/.idcfrc
chmod 600 ~/.idcfrc

/bin/cloudstack-api $@

