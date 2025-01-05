#!/bin/bash

until curl -s http://localhost:5173 >/dev/null; do
    echo "Waiting for server..."
    sleep 2
done

echo "Server is ready!"
brave-browser "http://localhost:5173"
