#!/bin/bash
docker build  -f Dockerfile -t backend .
docker tag backend nickkostov/backend:2.0
docker push nickkostov/backend:2.0
