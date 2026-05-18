# Fix Notes

Fixed issues related to admin/sub-admin app editing and PIN verification:

1. `/api/apps/:appId` PATCH no longer returns 404 for the default app if local data is missing/stale; the default app is recreated and then updated.
2. App IDs are normalized with `trim().toUpperCase()` on API lookup/create/update/delete.
3. PINs are normalized with `trim()` on save and verify, so correct PINs do not fail because of accidental spaces.
4. Frontend app edit and PIN-change flows now send normalized app IDs/PINs and display PATCH errors.
5. Vite dev servers now proxy `/api` to `http://localhost:5000` by default, fixing local-dev 404 errors like `PATCH http://localhost:3000/api/apps/... 404` when frontend and API run on different ports.
6. Patched bundled API server dist to avoid an old Windows absolute pino worker path.

## Local run

Use the all-in-one server:

```bash
pnpm install
./start.sh
```

Open: `http://localhost:5000`

If running frontend separately:

```bash
pnpm --filter @workspace/api-server run dev
PORT=3000 BASE_PATH=/ pnpm --filter @workspace/mockup-sandbox run dev
```

The frontend will proxy `/api` to `http://localhost:5000`. To use another API URL, set `VITE_API_TARGET`.
