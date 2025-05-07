<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AsiriCare | Create Medical Report</title>
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
      <form action="${pageContext.request.contextPath}/report" method="POST" class="bg-white shadow-lg rounded-lg p-8 w-full">

        <input type="hidden" name="action" value="create">

        <h2 class="text-xl font-semibold mb-6">New Medical Report</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">

          <!-- Left Side -->
          <div class="space-y-4">
            <!-- Patient -->
            <div>
              <label class="block text-sm font-medium mb-1" for="patientId">Patient</label>
              <select id="patientId" name="patientId" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
                <option value="">Select Patient</option>
                <c:forEach var="patient" items="${patients}">
                  <option value="${patient.patientId}">${patient.fullName}</option>
                </c:forEach>
              </select>
            </div>

            <!-- Report Title -->
            <div>
              <label class="block text-sm font-medium mb-1" for="reportTitle">Report Title</label>
              <input type="text" id="reportTitle" name="reportTitle" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>
          </div>

          <!-- Right Side -->
          <div class="space-y-4">
            <!-- Doctor -->
            <div>
              <label class="block text-sm font-medium mb-1" for="doctorId">Doctor</label>
              <select id="doctorId" name="doctorId" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
                <option value="">Select Doctor</option>
                <c:forEach var="doctor" items="${doctors}">
                  <option value="${doctor.doctorId}">${doctor.fullName}</option>
                </c:forEach>
              </select>
            </div>
          </div>

        </div>

        <!-- Report Details -->
        <div class="mt-6">
          <label class="block text-sm font-medium mb-1" for="reportDetails">Report Details</label>
          <textarea id="reportDetails" name="reportDetails" rows="5" required
            class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-white text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none resize-none"></textarea>
        </div>

        <!-- Submit Button -->
        <div class="mt-8 flex justify-end">
          <button type="submit"
            class="flex items-center gap-2 px-6 py-2 bg-purple-600 hover:bg-purple-700 text-white rounded-lg font-semibold transition">
            <i class="fas fa-save"></i> Save Report
          </button>
        </div>

      </form>

    </main>

  </div>

  <!-- JavaScript -->
  <%@ include file="../partials/script.jsp" %>

</body>
</html>