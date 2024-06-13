// pages/login.tsx
import Layout from '../components/Layout';

const Login = () => {
  return (
    <Layout>
      <div className="flex items-center justify-center min-h-screen bg-gray-800">
        <div className="bg-gray-700 p-8 rounded-lg shadow-lg w-full max-w-md">
          <h2 className="text-3xl font-semibold mb-6 text-center text-teal-400">Login</h2>
          <form>
            <div className="mb-4">
              <label className="block text-gray-300 mb-2">Email</label>
              <input
                type="email"
                className="w-full px-4 py-2 border border-gray-600 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 bg-gray-800 text-gray-300"
              />
            </div>
            <div className="mb-6">
              <label className="block text-gray-300 mb-2">Password</label>
              <input
                type="password"
                className="w-full px-4 py-2 border border-gray-600 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 bg-gray-800 text-gray-300"
              />
            </div>
            <button className="w-full bg-teal-600 text-white py-2 rounded-lg hover:bg-teal-700 transition-colors">
              Login
            </button>
          </form>
        </div>
      </div>
    </Layout>
  );
};

export default Login;
