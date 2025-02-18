#!/bin/bash

AWS_REGION="us-east-1"
AWS_ACCOUNT_ID="your-account-id"
ECR_REPO="cloud-native-app"

# Authenticate Docker with AWS ECR
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com

# Build and Push Backend
cd backend
docker build -t $ECR_REPO-backend .
docker tag $ECR_REPO-backend:latest $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO-backend:latest
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO-backend:latest
cd ..

# Build and Push Frontend
cd frontend
docker build -t $ECR_REPO-frontend .
docker tag $ECR_REPO-frontend:latest $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO-frontend:latest
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO-frontend:latest
cd ..
