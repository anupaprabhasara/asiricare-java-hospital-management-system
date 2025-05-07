<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AsiriCare | Edit Patient</title>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/asiricare/assets/favicon.png" type="image/x-icon">

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>

<body class="min-h-screen flex text-gray-900" style="background: linear-gradient(to right, #a18cd1, #fbc2eb);">

  <!-- Sidebar -->
  <%@ include file="../partials/sidebar.jsp" %>

  <!-- Main Content -->
  <div class="flex-1 flex flex-col">

    <!-- Topbar -->
    <%@ include file="../partials/header.jsp" %>

    <!-- Main Area -->
    <main class="flex-1 p-6 space-y-6">

      <!-- Form Card -->
      <form action="${pageContext.request.contextPath}/patient" method="POST"
        class="bg-white shadow-lg rounded-lg p-8 w-full max-w-4xl mx-auto">

        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="${patient.patientId}">

        <h2 class="text-xl font-semibold mb-6">Update Patient Information</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          
          <!-- Left Side -->
          <div class="space-y-4">
            <div>
              <label class="block text-sm font-medium mb-1" for="fullName">Full Name</label>
              <input type="text" id="fullName" name="fullName" required
                value="${patient.fullName}"
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>

            <div>
              <label class="block text-sm font-medium mb-1" for="birthDate">Birth Date</label>
              <input type="date" id="birthDate" name="birthDate" required
                value="${patient.birthDate}"
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>
          </div>

          <!-- Right Side -->
          <div class="space-y-4">
            <div>
              <label class="block text-sm font-medium mb-1" for="gender">Gender</label>
              <select id="gender" name="gender" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
                <option value="">Select Gender</option>
                <option value="Male" ${patient.gender == 'Male' ? 'selected' : ''}>Male</option>
                <option value="Female" ${patient.gender == 'Female' ? 'selected' : ''}>Female</option>
                <option value="Other" ${patient.gender == 'Other' ? 'selected' : ''}>Other</option>
              </select>
            </div>

            <div>
              <label class="block text-sm font-medium mb-1" for="contactNumber">Contact Number</label>
              <input type="number" id="contactNumber" name="contactNumber" required
                value="${patient.contactNumber}"
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>
          </div>

        </div>

        <!-- Address -->
        <div class="mt-6">
          <label class="block text-sm font-medium mb-1" for="address">Address</label>
          <textarea id="address" name="address" rows="3" required
            class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none resize-none">${patient.address}</textarea>
        </div>

        <!-- Submit Button -->
        <div class="mt-8 flex justify-end">
          <button type="submit"
            class="flex items-center gap-2 px-6 py-2 bg-purple-600 hover:bg-purple-700 text-white rounded-lg font-semibold transition">
            <i class="fas fa-save"></i> Update Patient
          </button>
        </div>

      </form>

    </main>

  </div>

  <!-- JavaScript -->
  <%@ include file="../partials/script.jsp" %>

</body>
</html>