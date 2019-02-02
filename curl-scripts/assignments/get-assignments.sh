#!/bin/bash

curl "http://localhost:4741/assignments" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
