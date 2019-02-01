#!/bin/bash

curl "http://localhost:4741/assignments/${ID}" \
  --include \
  --request DELETE \

echo
