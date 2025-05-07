<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String uri = request.getRequestURI();
    String pageTitle = "Dashboard";

    if (uri.contains("/admin")) {
        pageTitle = "Admins Management";
    } else if (uri.contains("/patient")) {
        pageTitle = "Patients Management";
    } else if (uri.contains("/doctor")) {
        pageTitle = "Doctors Management";
    } else if (uri.contains("/medicine")) {
        pageTitle = "Medicines Management";
    } else if (uri.contains("/appointment")) {
        pageTitle = "Appointments Management";
    } else if (uri.contains("/report")) {
        pageTitle = "Medical Reports Management";
    }

    request.setAttribute("pageTitle", pageTitle);
%>

<header class="flex justify-between items-center p-4 bg-purple-100 shadow-sm border-b border-purple-300">
  <h2 class="text-xl font-bold text-purple-800">${pageTitle}</h2>

  <div class="flex items-center space-x-4">
    <div class="text-right text-sm">
      <p class="font-semibold text-gray-800">${sessionScope.fullname}</p>
      <p class="text-xs text-gray-500">${sessionScope.role}</p>
    </div>
    <img
      src="https://ui-avatars.com/api/?name=${sessionScope.fullname}&background=818CF8&color=fff"
      alt="Profile" class="w-10 h-10 rounded-full shadow-md ring-2 ring-purple-400">
  </div>
</header>