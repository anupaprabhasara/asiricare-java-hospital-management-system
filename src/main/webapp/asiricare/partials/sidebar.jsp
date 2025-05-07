<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<aside class="w-60 hidden md:flex flex-col bg-white border-r border-purple-300 shadow-md">
  <div class="p-6 text-center border-b border-purple-300">
    <h1 class="text-2xl font-bold text-purple-700">AsiriCare</h1>
  </div>

  <nav class="flex-1 px-4 py-6 space-y-2">
    <a href="dashboard"
      class="flex items-center p-3 rounded hover:bg-purple-100 text-gray-800 hover:text-purple-700 transition">
      <i class="fas fa-home mr-3"></i> Dashboard
    </a>
    <a href="patient"
      class="flex items-center p-3 rounded hover:bg-purple-100 text-gray-800 hover:text-purple-700 transition">
      <i class="fas fa-user-injured mr-3"></i> Patients
    </a>
    <a href="doctor"
      class="flex items-center p-3 rounded hover:bg-purple-100 text-gray-800 hover:text-purple-700 transition">
      <i class="fas fa-user-md mr-3"></i> Doctors
    </a>
    <a href="appointment"
      class="flex items-center p-3 rounded hover:bg-purple-100 text-gray-800 hover:text-purple-700 transition">
      <i class="fas fa-calendar-check mr-3"></i> Appointments
    </a>
    <a href="medicine"
      class="flex items-center p-3 rounded hover:bg-purple-100 text-gray-800 hover:text-purple-700 transition">
      <i class="fas fa-pills mr-3"></i> Medicines
    </a>
    <a href="report"
      class="flex items-center p-3 rounded hover:bg-purple-100 text-gray-800 hover:text-purple-700 transition">
      <i class="fas fa-file-medical mr-3"></i> Reports
    </a>
    <a href="admin"
      class="flex items-center p-3 rounded hover:bg-purple-100 text-gray-800 hover:text-purple-700 transition">
      <i class="fas fa-users-cog mr-3"></i> Admins
    </a>
  </nav>

  <div class="p-4 border-t border-purple-200">
    <button onclick="logout()"
      class="w-full flex items-center justify-center text-red-500 hover:text-red-600 font-semibold transition">
      <i class="fas fa-sign-out-alt mr-2"></i> Logout
    </button>
  </div>
</aside>