#!/bin/bash

echo "🔧 Setting up environment..."
docker network create devops-net || true

echo "🐳 Building and starting containers..."
docker-compose up --build -d

echo "📋 Checking container status..."
docker ps

echo "📡 Tail logs (CTRL+C to exit)..."
docker-compose logs -f
