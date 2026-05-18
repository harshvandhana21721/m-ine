# MR ROBOT — Windows Setup Guide

## Prerequisites
1. Node.js v20+ — https://nodejs.org
2. pnpm — run: npm install -g pnpm

## Step 1: Firebase Setup (FCM ke liye)
1. .env.example ko copy karke .env banao:
   cp .env.example .env   (Linux/Mac)
   copy .env.example .env  (Windows)
2. .env mein FIREBASE_SERVICE_ACCOUNT_JSON fill karo apne Firebase JSON se

## Step 2: Install & Run

   pnpm install
   pnpm --filter @workspace/api-server run dev

Server: http://localhost:5000

## Step 3: Frontend (alag terminal mein)

   pnpm --filter @workspace/mockup-sandbox run dev

Frontend: http://localhost:5173
Dashboard: http://localhost:5173/preview/dashboard/WebDashboard?appId=YOUR_APP_ID

## Cloudflare Pages Deploy
See cloudflare-pages/ folder — standalone project
   cd cloudflare-pages
   npm install
   npm run build
   npx wrangler pages deploy dist --project-name mr-robot

## Default Credentials
Master PIN: master1234
App IDs: SKY-APP-2026-X9F3, APP-1010-2B63-AHZW (PIN: 1234)