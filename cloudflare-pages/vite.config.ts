import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import tailwindcss from '@tailwindcss/vite';

const apiTarget = process.env.VITE_API_TARGET ?? 'http://localhost:5000';

export default defineConfig({
  base: '/',
  plugins: [react(), tailwindcss()],
  build: { outDir: 'dist', emptyOutDir: true },
  server: {
    port: Number(process.env.PORT ?? 5173),
    host: '0.0.0.0',
    allowedHosts: true,
    proxy: {
      '/api': { target: apiTarget, changeOrigin: true, secure: false },
    },
  },
});
