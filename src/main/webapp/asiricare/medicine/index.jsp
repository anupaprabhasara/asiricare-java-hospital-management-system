<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AsiriCare | Medicines</title>
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

      <!-- Actions: Create & Search -->
      <div class="flex flex-col md:flex-row md:justify-between md:items-center space-y-4 md:space-y-0">

        <a href="${pageContext.request.contextPath}/medicine?action=create" class="flex items-center gap-2 px-5 py-2 bg-purple-600 hover:bg-purple-700 text-white rounded-lg font-semibold transition">
          <i class="fas fa-plus"></i> Add New Medicine
        </a>

        <div class="relative w-full md:w-1/3">
          <input id="search" type="text" placeholder="Search medicines..."
            class="w-full pl-10 pr-4 py-2 rounded-lg bg-white border border-gray-300 focus:ring-2 focus:ring-purple-500 focus:outline-none text-gray-900">
          <i class="fas fa-search absolute left-3 top-3 text-gray-400"></i>
        </div>

      </div>

      <!-- Data Table -->
      <div class="overflow-x-auto bg-white shadow-lg rounded-lg">
        <table class="w-full text-sm text-left">
          <thead class="text-xs uppercase bg-purple-100 text-gray-700">
            <tr>
              <th class="px-6 py-4">ID</th>
              <th class="px-6 py-4">Name</th>
              <th class="px-6 py-4">Description</th>
              <th class="px-6 py-4">Stock</th>
              <th class="px-6 py-4">Expiry Date</th>
              <th class="px-6 py-4">Created At</th>
              <th class="px-6 py-4 text-center">Actions</th>
            </tr>
          </thead>
          <tbody id="table" class="text-gray-800">
            <c:choose>
              <c:when test="${not empty medicines}">
                <c:forEach var="medicine" items="${medicines}">
                  <tr class="border-b hover:bg-purple-50">
                    <td class="px-6 py-4">${medicine.medicineId}</td>
                    <td class="px-6 py-4">${medicine.name}</td>
                    <td class="px-6 py-4">${medicine.description}</td>
                    <td class="px-6 py-4">${medicine.stockQuantity}</td>
                    <td class="px-6 py-4">${medicine.expiryDate}</td>
                    <td class="px-6 py-4">${medicine.createdAt}</td>
                    <td class="px-6 py-4 text-center space-x-3">
                      <a href="${pageContext.request.contextPath}/medicine?action=edit&id=${medicine.medicineId}" class="text-green-600 hover:text-green-700">
                        <i class="fas fa-edit"></i>
                      </a>
                      <a href="${pageContext.request.contextPath}/medicine?action=delete&id=${medicine.medicineId}" onclick="return confirmDelete(this.href);" class="text-red-600 hover:text-red-700">
                        <i class="fas fa-trash"></i>
                      </a>
                    </td>
                  </tr>
                </c:forEach>
              </c:when>
              <c:otherwise>
                <tr>
                  <td colspan="7" class="px-6 py-4 text-center text-gray-500">
                    No medicines found.
                  </td>
                </tr>
              </c:otherwise>
            </c:choose>
          </tbody>
        </table>
      </div>

    </main>

  </div>

  <!-- JavaScript -->
  <%@ include file="../partials/script.jsp" %>

</body>
</html>