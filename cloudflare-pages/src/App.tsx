import WebDashboard from './components/mockups/dashboard/WebDashboard';
import MainAdminPanel from './components/mockups/dashboard/MainAdminPanel';
export default function App() {
  const p = window.location.pathname;
  if (p.includes('WebDashboard')) return <WebDashboard />;
  return <MainAdminPanel />;
}
