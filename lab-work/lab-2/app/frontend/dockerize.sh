#!/bin/bash
ng build --prod 
docker build  -f Dockerfile -t frontend .
docker tag frontend nickkostov/frontend:2.0
docker push nickkostov/frontend:2.0
