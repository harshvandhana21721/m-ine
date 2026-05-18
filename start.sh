#!/bin/bash
set -e
echo "=== MR ROBOT Admin ==="
echo "[1/3] Installing dependencies..."
pnpm install
echo "[2/3] Building frontend..."
PORT=5000 BASE_PATH="/" pnpm --filter @workspace/mockup-sandbox run build
echo "[3/3] Starting server..."
echo ""
echo "Open: http://localhost:5000"
echo "PIN:  master1234"
echo ""
pnpm --filter @workspace/api-server run dev
