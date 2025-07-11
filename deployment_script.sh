#!/bin/bash
az container create --resource-group <your-resource-group> --name todo-backend \
  --image <your-docker-hub-image-name> \
  --dns-name-label <your-dns-name> \
  --ports 5000 \
  --cpu 1 \
  --memory 1 \
  --restart-policy Always \
  --environment-variables MONGO_URI=$MONGO_URI JWT_SECRET=$JWT_SECRET \
  --health-probe "{httpGet:{path:'/api/health',port:5000}}"