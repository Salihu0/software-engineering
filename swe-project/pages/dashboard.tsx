// pages/dashboard.tsx
import Layout from '../components/Layout';
import Link from 'next/link';

const Dashboard = () => {
  return (
    <Layout>
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
        <div className="lg:col-span-2">
          <div className="bg-gray-700 p-6 rounded-lg shadow-md mb-8">
            <h1 className="text-4xl font-semibold text-teal-400 mb-4">Student Dashboard</h1>
            <p className="text-gray-300 text-lg">Welcome back, Student!</p>
            <p className="text-gray-400">Here's an overview of your current courses and academic activities.</p>
          </div>
        </div>
        <div className="bg-gray-700 p-6 rounded-lg shadow-md">
          <h2 className="text-2xl font-semibold text-teal-400 mb-4">Enrolled Courses</h2>
          <ul className="text-gray-300 space-y-2">
            <li>Machine Learning</li>
            <li>Advanced Algorithms</li>
            <li>Cyber Security</li>
            <li>Cloud Computing</li>
          </ul>
        </div>
        <div className="bg-gray-700 p-6 rounded-lg shadow-md">
          <h2 className="text-2xl font-semibold text-teal-400 mb-4">Upcoming Assignments</h2>
          <ul className="text-gray-300 space-y-2">
            <li>Machine Learning - Homework 2 (Due: June 25)</li>
            <li>Advanced Algorithms - Project 1 (Due: June 28)</li>
            <li>Cyber Security - Lab Report (Due: July 3)</li>
          </ul>
        </div>
        <div className="bg-gray-700 p-6 rounded-lg shadow-md">
          <h2 className="text-2xl font-semibold text-teal-400 mb-4">Upcoming Exams</h2>
          <ul className="text-gray-300 space-y-2">
            <li>Machine Learning - Midterm Exam (July 1)</li>
            <li>Advanced Algorithms - Final Exam (July 10)</li>
            <li>Cyber Security - Final Exam (July 15)</li>
          </ul>
        </div>
        <div className="bg-gray-700 p-6 rounded-lg shadow-md lg:col-span-2">
          <h2 className="text-2xl font-semibold text-teal-400 mb-4">Announcements</h2>
          <ul className="text-gray-300 space-y-2">
            <li>New guidelines for Cloud Computing project released.</li>
            <li>Guest lecture on AI Ethics scheduled for June 20.</li>
            <li>Results for Advanced Algorithms midterm are now available.</li>
          </ul>
        </div>
        <div className="bg-gray-700 p-6 rounded-lg shadow-md lg:col-span-2">
          <h2 className="text-2xl font-semibold text-teal-400 mb-4">Resources</h2>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <div className="bg-gray-800 p-4 rounded-lg">
              <h3 className="text-xl font-bold text-teal-400 mb-2">Lecture Notes</h3>
              <p className="text-gray-300">Download the latest lecture notes for your courses.</p>
            </div>
            <div className="bg-gray-800 p-4 rounded-lg">
              <h3 className="text-xl font-bold text-teal-400 mb-2">Assignments</h3>
              <p className="text-gray-300">Submit your assignments here.</p>
            </div>
            <div className="bg-gray-800 p-4 rounded-lg">
              <h3 className="text-xl font-bold text-teal-400 mb-2">Exam Resources</h3>
              <p className="text-gray-300">Find past papers and exam guidelines.</p>
            </div>
          </div>
        </div>
      </div>
    </Layout>
  );
};

export default Dashboard;
