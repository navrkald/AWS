#!/bin/env bash

# Pass as param encoded authorization message
aws sts --region eu-central-1 decode-authorization-message --encoded-message $1 | jq '.["DecodedMessage"]' | sed 's/\\"/"/g' | sed 's/^"//' | sed 's/"$//' | jq
