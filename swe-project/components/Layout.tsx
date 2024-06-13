// components/Layout.tsx
import { ReactNode } from 'react';
import Navbar from './Navbar';

interface LayoutProps {
  children: ReactNode;
}

const Layout = ({ children }: LayoutProps) => {
  return (
    <div className="bg-gray-800 min-h-screen text-gray-100">
      <Navbar />
      <main className="container mx-auto p-8">
        {children}
      </main>
    </div>
  );
};

export default Layout;
