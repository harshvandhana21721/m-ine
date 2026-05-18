# MR ROBOT Admin Panel

## Requirements
- Node.js 20+
- pnpm (`npm install -g pnpm`)

## Quick Start
```bash
chmod +x start.sh
./start.sh
```

## Manual
```bash
pnpm install
PORT=5000 BASE_PATH="/" pnpm --filter @workspace/mockup-sandbox run build
pnpm --filter @workspace/api-server run dev
```

## Open in Browser
http://localhost:5000

## Login
- Master Admin PIN: master1234
- Default App ID: SKY-APP-2026-X9F3
- Default App PIN: 1234

## API Endpoints
| Method | Path | Description |
|--------|------|-------------|
| GET | /api/healthz | Health check |
| POST | /api/register | Register device |
| POST | /api/heartbeat | Device heartbeat |
| GET | /api/devices | List devices |
| GET | /api/messages | List messages |
| POST | /api/messages | Add message |
| POST | /api/fcm/send | Send FCM to device |
| POST | /api/fcm/online-check | FCM ping by token |
| GET | /api/apps | List apps |
| GET | /api/stats | Stats |
| GET | /api/events | SSE real-time stream |
| POST | /api/data | Submit form data |

## Firebase FCM
Pre-configured with your service account (project: test-95c77).
Credentials are in the .env file — keep it private!
