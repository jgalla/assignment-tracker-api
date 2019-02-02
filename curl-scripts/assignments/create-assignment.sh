#!/bin/bash

curl "http://localhost:4741/assignments" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "assignment": {
      "assignment_name": "'"${NAME}"'",
      "link": "'"${LINK}"'",
      "due_date": "'"${DATE}"'",
      "status": "'"${STATUS}"'"
    }
  }'

echo
