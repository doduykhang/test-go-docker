#! /bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 294962230460.dkr.ecr.us-east-1.amazonaws.com
docker pull 294962230460.dkr.ecr.us-east-1.amazonaws.com/app:latest
