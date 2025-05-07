<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AsiriCare | Login</title>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/asiricare/assets/favicon.png" type="image/x-icon">

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>

<body style="background: linear-gradient(to right, #a18cd1, #fbc2eb);" class="flex items-center justify-center min-h-screen px-4">

  <div class="w-full max-w-md p-8 space-y-6 bg-white shadow-2xl rounded-3xl">

    <!-- Title -->
    <h2 class="text-4xl font-bold text-center text-gray-800">AsiriCare Login</h2>
    <p class="text-center text-gray-500 text-sm mb-6">Please enter your credentials to continue</p>

    <!-- Error Message -->
    <%
      String error = (String) request.getAttribute("error");
      if (error != null) {
    %>
      <div class="w-full bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded-lg text-center text-sm" role="alert">
        <i class="fas fa-exclamation-circle mr-2"></i>
        <%= error %>
      </div>
    <%
      }
    %>

    <!-- Login Form -->
    <form class="space-y-5" action="${pageContext.request.contextPath}/login" method="POST">

      <!-- Username -->
      <div class="relative">
        <label for="username" class="block mb-1 text-gray-700 font-medium">Username</label>
        <div class="flex items-center relative">
          <input id="username" name="username" type="text" required
                 placeholder="Enter your username"
                 class="w-full pl-10 pr-4 py-2 rounded-lg bg-gray-50 border border-gray-300 text-gray-800 focus:ring-2 focus:ring-blue-500 focus:outline-none">
          <i class="fas fa-user absolute left-3 text-gray-400"></i>
        </div>
      </div>

      <!-- Password -->
      <div class="relative">
        <label for="password" class="block mb-1 text-gray-700 font-medium">Password</label>
        <div class="flex items-center relative">
          <input id="password" name="password" type="password" required
                 placeholder="Enter your password"
                 class="w-full pl-10 pr-10 py-2 rounded-lg bg-gray-50 border border-gray-300 text-gray-800 focus:ring-2 focus:ring-blue-500 focus:outline-none">
          <i class="fas fa-lock absolute left-3 text-gray-400"></i>
          <button type="button" onclick="togglePassword()" class="absolute right-3 text-gray-400 focus:outline-none">
            <i id="eyeIcon" class="fas fa-eye"></i>
          </button>
        </div>
      </div>

      <!-- Submit -->
      <div>
        <button type="submit"
                class="w-full px-4 py-2 text-white bg-blue-600 hover:bg-blue-700 font-semibold rounded-lg shadow-md transition duration-200">
          Sign In
        </button>
      </div>
    </form>

    <!-- Footer -->
    <p class="text-center text-gray-500 text-xs mt-6">AsiriCare - Secure Hospital System</p>

  </div>

  <!-- Toggle Password Script -->
  <script>
    function togglePassword() {
      const passwordInput = document.getElementById("password");
      const eyeIcon = document.getElementById("eyeIcon");

      if (passwordInput.type === "password") {
        passwordInput.type = "text";
        eyeIcon.classList.replace("fa-eye", "fa-eye-slash");
      } else {
        passwordInput.type = "password";
        eyeIcon.classList.replace("fa-eye-slash", "fa-eye");
      }
    }
  </script>

</body>
</html>