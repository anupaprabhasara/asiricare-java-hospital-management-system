<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AsiriCare | Medical Reports</title>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/asiricare/assets/favicon.png" type="image/x-icon">

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>

<body class="min-h-screen flex text-gray-900" style="background: linear-gradient(to right, #fbc2eb, #a6c1ee);">

  <!-- Sidebar -->
  <%@ include file="../partials/sidebar.jsp" %>

  <!-- Main Content -->
  <div class="flex-1 flex flex-col">

    <!-- Topbar -->
    <%@ include file="../partials/header.jsp" %>

    <!-- Main Area -->
    <main class="flex-1 p-6 space-y-6">

      <!-- Actions -->
      <div class="flex flex-col md:flex-row md:justify-between md:items-center space-y-4 md:space-y-0">

        <a href="${pageContext.request.contextPath}/report?action=create"
          class="flex items-center gap-2 px-5 py-2 bg-purple-600 hover:bg-purple-700 text-white rounded-lg font-semibold transition">
          <i class="fas fa-plus"></i> Create New
        </a>

        <div class="relative w-full md:w-1/3">
          <input id="search" type="text" placeholder="Search reports..."
            class="w-full pl-10 pr-4 py-2 rounded-lg bg-white border border-gray-300 text-gray-900 focus:ring-2 focus:ring-purple-500 focus:outline-none">
          <i class="fas fa-search absolute left-3 top-3 text-gray-400"></i>
        </div>

      </div>

      <!-- Reports Table -->
      <div class="overflow-x-auto bg-white shadow-lg rounded-lg">
        <table class="w-full text-sm text-left">
          <thead class="text-xs uppercase bg-gray-100 text-gray-700">
            <tr>
              <th class="px-6 py-4">ID</th>
              <th class="px-6 py-4">Patient</th>
              <th class="px-6 py-4">Doctor</th>
              <th class="px-6 py-4">Title</th>
              <th class="px-6 py-4">Details</th>
              <th class="px-6 py-4 text-center">Actions</th>
            </tr>
          </thead>
          <tbody id="userTable" class="text-gray-700">
            <c:choose>
              <c:when test="${not empty reports}">
                <c:forEach var="report" items="${reports}">
                  <tr class="border-b hover:bg-purple-50">
                    <td class="px-6 py-4">${report.reportId}</td>
                    <td class="px-6 py-4">${report.patientName}</td>
                    <td class="px-6 py-4">${report.doctorName}</td>
                    <td class="px-6 py-4">${report.reportTitle}</td>
                    <td class="px-6 py-4">${report.reportDetails}</td>
                    <td class="px-6 py-4 text-center space-x-3">
                      <a href="${pageContext.request.contextPath}/report?action=edit&id=${report.reportId}"
                         class="text-green-600 hover:text-green-700">
                        <i class="fas fa-edit"></i>
                      </a>
                      <a href="${pageContext.request.contextPath}/report?action=delete&id=${report.reportId}"
                         onclick="return confirmDelete(this.href);" class="text-red-600 hover:text-red-700">
                        <i class="fas fa-trash"></i>
                      </a>
                    </td>
                  </tr>
                </c:forEach>
              </c:when>
              <c:otherwise>
                <tr>
                  <td colspan="6" class="px-6 py-4 text-center text-gray-500">
                    No reports found.
                  </td>
                </tr>
              </c:otherwise>
            </c:choose>
          </tbody>
        </table>
      </div>

    </main>

  </div>

  <!-- Scripts -->
  <%@ include file="../partials/script.jsp" %>

</body>
</html>