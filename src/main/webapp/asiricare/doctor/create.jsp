<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AsiriCare | Create Doctor</title>
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

      <!-- Full Width Form -->
      <form action="${pageContext.request.contextPath}/doctor" method="POST" class="bg-white shadow-lg rounded-lg p-8 w-full">

        <input type="hidden" name="action" value="create">

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          
          <!-- Left Side -->
          <div class="space-y-4">
            <div>
              <label class="block text-sm font-medium mb-1" for="fullName">Full Name</label>
              <input type="text" id="fullName" name="fullName" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-gray-50 text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>

            <div>
              <label class="block text-sm font-medium mb-1" for="specialty">Specialty</label>
              <input type="text" id="specialty" name="specialty" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-gray-50 text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>
          </div>

          <!-- Right Side -->
          <div class="space-y-4">
            <div>
              <label class="block text-sm font-medium mb-1" for="contactNumber">Contact Number</label>
              <input type="number" id="contactNumber" name="contactNumber" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-gray-50 text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>

            <div>
              <label class="block text-sm font-medium mb-1" for="email">Email</label>
              <input type="email" id="email" name="email" required
                class="w-full px-4 py-2 rounded-lg border border-gray-300 bg-gray-50 text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
            </div>
          </div>

        </div>

        <!-- Submit Button -->
        <div class="mt-8 flex justify-end">
          <button type="submit" class="flex items-center gap-2 px-6 py-2 bg-purple-600 hover:bg-purple-700 text-white rounded-lg font-semibold transition">
            <i class="fas fa-save"></i> Save Doctor
          </button>
        </div>

      </form>

    </main>

  </div>

  <!-- JavaScript -->
  <%@ include file="../partials/script.jsp" %>

</body>
</html>