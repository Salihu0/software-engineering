// components/Navbar.tsx
import Link from 'next/link';

const Navbar = () => {
  return (
    <nav className="bg-gray-900 p-4 shadow-lg">
      <div className="container mx-auto flex justify-between items-center">
        <div className="text-teal-400 font-bold text-2xl">CourseManager</div>
        <div className="flex space-x-6">
          <Link legacyBehavior href="/login">
            <a className="text-gray-300 hover:text-white transition-colors">Login</a>
          </Link>
          <Link legacyBehavior href="/register">
            <a className="text-gray-300 hover:text-white transition-colors">Register</a>
          </Link>
          <Link legacyBehavior href="/dashboard">
            <a className="text-gray-300 hover:text-white transition-colors">Dashboard</a>
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
