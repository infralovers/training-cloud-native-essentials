#!/usr/bin/env bash

API_HOST=${API_HOST:-localhost}
API_PORT=${API_PORT:-8181}
API_PROTO=${API_PROTO:-http}
ENDPOINT="${API_PROTO}://${API_HOST}:${API_PORT}"

set -eo pipefail
echo "** Health **"
response=$( curl -s -X GET \
                 -H "Content-Type: application/json" \
                ${ENDPOINT}/health)
echo $response
echo ""
echo "** Add **"
response=$( curl -s -X POST \
                 -H "Content-Type: application/json" \
                 --data '{ "operandOne":"5", "operandTwo":"3" }' \
                ${ENDPOINT}/calculate/add )

echo "Expected response: 8, actual: $response"
echo ""
echo "** Subtract **"
response=$( curl -s -X POST \
                 -H "Content-Type: application/json" \
                 --data '{ "operandOne":"5", "operandTwo":"3" }' \
                ${ENDPOINT}/calculate/subtract )

echo "Expected response: 2, actual: $response"
echo ""
echo "** Multiply **"
response=$( curl -s -X POST \
                 -H "Content-Type: application/json" \
                 --data '{ "operandOne":"5", "operandTwo":"3" }' \
                ${ENDPOINT}/calculate/multiply )

echo "Expected response: 15, actual: $response"
echo ""
echo "** Divide **"
response=$( curl -s -X POST \
                 -H "Content-Type: application/json" \
                 --data '{ "operandOne":"10", "operandTwo":"2" }' \
                ${ENDPOINT}/calculate/divide )

echo "Expected response: 5, actual: $response"
