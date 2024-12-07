#!/bin/bash
ng build --prod 
docker build  -f Dockerfile -t frontend .
docker tag frontend nickkostov/frontend:1.1
docker push nickkostov/frontend:1.1
