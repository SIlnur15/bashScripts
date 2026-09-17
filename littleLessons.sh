#!/bin/bash
API_URL="https://api.example.com/users"
TOKEN="YOUR_ACCESS_TOKEN"

# GET-запрос
curl -H "Authorization: Bearer $TOKEN" "$API_URL" | jq .  # jq для красивого вывода JSON

# POST-запрос
curl -X POST "$API_URL" \
  -H "Content-Type: application/json" \
  -d '{"name": "John", "age": 30}'
